import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_date/src/dart_date.dart';
import 'package:flutter/material.dart' hide Interval;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timetable/timetable.dart';

import '../../email_service.dart';

part 'booking_form_cubit.freezed.dart';
part 'booking_form_state.dart';

class BookingFormCubit extends Cubit<BookingFormState> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final emailRepeatController = TextEditingController();

  final socialSecurityController = TextEditingController();
  final passportNoController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final otherInfoController = TextEditingController();

  late TimeController timeController;
  final dateController = DateController();

  final formKey = GlobalKey<FormState>();

  BookingFormCubit() : super(const BookingFormState.initial());
  void init(String clinicId) async {
    final clinic = await Clinic.ref
        .doc(clinicId)
        .get()
        .then((snapshot) => snapshot.data()!);
    final settings = await clinic.settingsRef
        .withConverter<ClinicSettings>(
            fromFirestore: (snapshot, _) =>
                ClinicSettings.fromSnapshot(snapshot),
            toFirestore: (settings, options) => settings.toJson())
        .get()
        .then((snapshot) => snapshot.data()!);
    timeController = TimeController(
        minDuration: Duration(minutes: settings.interval),
        maxRange:
            TimeRange(settings.openDays.earliest, settings.openDays.latest));
    emit(BookingFormState.loaded(
        focusedDay: DateTime.now(),
        selectedDay: DateTime.now(),
        clinic: clinic,
        clinicSettings: settings,
        availableDates: [],
        step: 0));
  }

  void onPageChanged(DateTime focusedDay) {
    state.mapOrNull(
      loaded: (loadedState) {
        emit(loadedState.copyWith(focusedDay: focusedDay));
      },
    );
  }

  List<BasicEvent> eventProvider(Interval visibleRange) {
    return state.maybeMap(
        loaded: (loadedState) {
          if (visibleRange.start.isBefore(DateTime.now())) return [];
          final openDay = loadedState.clinicSettings.openDays
              .getDay(visibleRange.start.weekday);
          final duration =
              TimeRange(openDay.start.duration, openDay.end.duration).duration;
          return List.generate(
              duration.inMinutes ~/ loadedState.clinicSettings.interval,
              (index) {
            final date = visibleRange.start.addMinutes(
                openDay.start.duration.inMinutes +
                    (index * loadedState.clinicSettings.interval));
            return BasicEvent(
                id: date,
                title: date.hoursAndMinutes,
                backgroundColor: Colors.blue,
                start: date,
                end: date.addMinutes(loadedState.clinicSettings.interval));
          });
        },
        orElse: () => <BasicEvent>[]);
  }

  void setStepIndex(int index) {
    state.mapOrNull(
        loaded: (loadedState) => emit(loadedState.copyWith(step: index)));
  }

  void selectService(Service service) {
    state.mapOrNull(
        loaded: (loadedState) =>
            emit(loadedState.copyWith(step: 1, selectedService: service)));
  }

  void selectTime(DateTime time) {
    state.mapOrNull(
        loaded: (loadedState) =>
            emit(loadedState.copyWith(selectedTime: time)));
  }

  void submitTime() {
    state.mapOrNull(
        loaded: (loadedState) => emit(loadedState.copyWith(step: 2)));
  }

  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final _rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  void confirmBooking() async {
    state.mapOrNull(loaded: (loadedState) async {
      final rid =
          "${loadedState.selectedService!.ridPrefix}${getRandomString(8)}";
      final booking = Booking(
        createdAt: DateTime.now(),
        lastName: lastNameController.text,
        socialSecurityNumber: socialSecurityController.text,
        endsAt: loadedState.selectedTime!
            .addMinutes(loadedState.selectedService!.minutes),
        passportNumber: passportNoController.text,
        startsAt: loadedState.selectedTime!,
        email: emailController.text,
        firstName: firstNameController.text,
        phoneNumber: phoneNumberController.text,
        rid: rid,
        status: Status.pending,
        clinicRef: 'clinics/${loadedState.clinic.id!}'.toDocumentRef,
        serviceRef:
            'services/${loadedState.selectedService!.id!}'.toDocumentRef,
      );

      await Booking.ref.doc(rid).set(booking);
      await EmailService(emailController.text).sendBookingConfirmation(
          firstName: booking.firstName,
          serviceName: loadedState.selectedService!.title,
          clinic: loadedState.clinic.name,
          startTime: loadedState.selectedTime!.toString(),
          rescheduleLink: "rescheduleLink",
          cancelLink: "cancelLink");
    });

    if (formKey.currentState!.validate()) {}
  }

/*   void nextStep() {
    state.mapOrNull(
      loaded: (loadedState) => emit(
        BookingFormState.stepTwo(
            clinic: loadedState.clinic,
            clinicSettings: loadedState.clinicSettings),
      ),
      stepTwo: (stepTwoState) => emit(
        BookingFormState.stepThree(
            clinic: stepTwoState.clinic,
            clinicSettings: stepTwoState.clinicSettings),
      ),
    );
} */
  Future<List<DateTime>> getAvailableDates(DateTime day) async {
    return state.maybeMap(
      loaded: (loadedState) {
        final clinicSettings = loadedState.clinicSettings;
        final openDay = clinicSettings.openDays.getDay(day.day);
        final openTime =
            day.addHours(openDay.start.hour).addMinutes(openDay.start.minute);
        final closeTime =
            day.addHours(openDay.end.hour).addMinutes(openDay.end.minute);

        List<DateTime> slots = [];
        for (int i = 0;
            i <= closeTime.difference(openTime).inMinutes;
            i += loadedState.selectedService!.minutes) {
          if (openTime.add(Duration(minutes: i)).isAfter(DateTime.now())) {
            slots.add(openTime.add(Duration(minutes: i)));
          }
        }
        return slots;
      },
      orElse: () => [],
    );
  }

  Future<void> onDaySelected(DateTime selectedDay, DateTime focusedDay) async {
    final availableDates = await getAvailableDates(selectedDay);
    state.mapOrNull(
      loaded: (loadedState) {
        if (!loadedState.selectedDay.isSameDay(selectedDay)) {
          emit(loadedState.copyWith(
              selectedDay: selectedDay,
              focusedDay: focusedDay,
              availableDates: availableDates));
        }
      },
    );
  }
}

extension on OpenHour {
  Duration get duration => Duration(hours: hour, minutes: minute);
}

extension on OpenDays {
  OpenDay getDay(int day) {
    switch (day) {
      case DateTime.monday:
        return monday;

      case DateTime.tuesday:
        return tuesday;
      case DateTime.wednesday:
        return wednesday;
      case DateTime.thursday:
        return thursday;
      case DateTime.friday:
        return friday;
      case DateTime.saturday:
        return saturday;
      case DateTime.sunday:
        return sunday;
      default:
        return monday;
    }
  }

  Duration get earliest => Duration(
      minutes: toJson()
          .values
          .map((day) => day['start'])
          .map((start) =>
              Duration(hours: start['hour'], minutes: start['minute'])
                  .inMinutes)
          .reduce(max));
  Duration get latest => Duration(
      minutes: toJson()
          .values
          .map((day) => day['end'])
          .map((start) =>
              Duration(hours: start['hour'], minutes: start['minute'])
                  .inMinutes)
          .reduce(min));
}

extension on String {
  get toDocumentRef => FirebaseFirestore.instance.doc(this);
}
