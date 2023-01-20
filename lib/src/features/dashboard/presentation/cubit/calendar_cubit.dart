import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:dart_date/dart_date.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:timetable/timetable.dart';

part 'calendar_cubit.freezed.dart';
part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit(this.bookingsRepository) : super(const CalendarState.initial());
  final BookingsRepository bookingsRepository;
  StreamSubscription? _bookingsSubscription;
  final timeController = TimeController();

  DateController dateController = DateController(
      visibleRange: VisibleDateRange.days(
    1,
  ));
  Future checkInBooking(Booking booking) async {
    await printBarcode(booking.rid);
    // bookingsRepository.updateBooking(booking.copyWith(status: Status.testing));
  }

  Future printBarcode(String rid) async {
    final doc = pw.Document();
    doc.addPage(pw.Page(
        pageFormat: const PdfPageFormat(
            PdfPageFormat.mm * 100, PdfPageFormat.mm * 60,
            marginAll: 8),
        build: (pw.Context context) {
          return pw.LayoutBuilder(builder: (context, constraints) {
            return pw.BarcodeWidget(
              barcode: pw.Barcode.fromType(pw.BarcodeType.Code128),
              data: rid,
            ); //
          });
        }));
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }

  void load() {
    _bookingsSubscription?.cancel();
    _bookingsSubscription = bookingsRepository.bookings().listen((bookings) {
      update(bookings);
    });
  }

  void toggleHeaderFormat(VisibleDays? format) {
    if (format == null) return;

    switch (format) {
      case VisibleDays.week:
        dateController.visibleRange =
            VisibleDateRange.week(startOfWeek: DateTime.now().weekday);

        break;

      case VisibleDays.day:
        dateController.visibleRange =
            VisibleDateRange.weekAligned(1, firstDay: DateTime.now().weekday);
        /*   dateController.visibleRange = VisibleDateRange.weekAligned(1,
            firstDay: DateTime.now().weekday,
            minDate: DateTime.now().toUtc().atStartOfDay); */

        break;

      default:
        break;
    }
    state.mapOrNull(loaded: (loadedState) {
      emit(loadedState.copyWith(visibleDays: format));
    });
  }

  void getEventsForDay(DateTime day) {}
  void getEventsByRange(DateTime start, DateTime end) {
    _bookingsSubscription?.cancel();
    _bookingsSubscription =
        bookingsRepository.bookingsByDateStream(start, end).listen((bookings) {
      update(bookings);
    });
  }

  void onPageChanged(DateTime focusedDay) {
    state.mapOrNull(
      loaded: (loadedState) {
        emit(loadedState.copyWith(focusedDay: focusedDay));
      },
    );
  }

  List<Booking> getEventsByDay(DateTime date) {
    return state.maybeMap(
        orElse: () => <Booking>[],
        loaded: (loadedState) => loadedState.bookings
            .where((booking) => booking.startsAt.isSameDay(date))
            .toList());
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    state.mapOrNull(
      loaded: (loadedState) {
        if (!loadedState.selectedDay.isSameDay(selectedDay)) {
          emit(loadedState.copyWith(
              selectedDay: selectedDay,
              focusedDay: focusedDay,
              selectedEvents: getEventsByDay(selectedDay)));
        }
      },
    );
  }

  void update(
    List<Booking> bookings, {
    DateTime? selectedDay,
    DateTime? focusedDay,
    List<Booking>? selectedEvents,
  }) {
    print("update(bookings)");
    emit(
      state.map(
        loaded: (loadedState) => CalendarState.loaded(bookings,
            visibleDays: VisibleDays.day,
            selectedDay: selectedDay ?? loadedState.selectedDay,
            focusedDay: focusedDay ?? loadedState.focusedDay,
            selectedEvents: selectedEvents ?? loadedState.selectedEvents),
        initial: (_) => CalendarState.loaded(bookings,
            visibleDays: VisibleDays.day,
            selectedDay: selectedDay ?? DateTime.now(),
            focusedDay: focusedDay ?? DateTime.now(),
            selectedEvents: selectedEvents ?? []),
      ),
    );
  }
}

enum VisibleDays {
  week,
  day,
}
