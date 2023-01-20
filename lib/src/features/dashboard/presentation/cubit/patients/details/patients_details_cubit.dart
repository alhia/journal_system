import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patients_details_cubit.freezed.dart';
part 'patients_details_state.dart';

class PatientsDetailsCubit extends Cubit<PatientsDetailsState> {
  PatientsDetailsCubit(this.bookingsRepository, {required this.authRepository})
      : super(const PatientsDetailsState.initial());
  final notesController = TextEditingController();
  final BookingsRepository bookingsRepository;
  final AuthenticationRepository authRepository;

  StreamSubscription? _bookingSubscription;
  void load(String rid) {
    _bookingSubscription?.cancel();
    _bookingSubscription = bookingsRepository.booking(rid).listen((booking) {
      state.map(
        initial: (value) => emit(PatientsDetailsState.loaded(booking)),
        loaded: (loadedState) => emit(loadedState.copyWith(booking: booking)),
      );
    });
  }

  void addNote() async {
    await state.mapOrNull(loaded: (loadedState) async {
      await bookingsRepository
          .updateBooking(loadedState.booking.copyWith(events: [
        ...loadedState.booking.events,
        BookingEvent(
          type: BookingEventType.note,
          createdAt: DateTime.now(),
          creator: FirebaseFirestore.instance
              .doc('/users/${authRepository.currentUser.id}'),
          notes: notesController.text,
        )
      ]));
    });
  }

  void updateBooking(Booking booking) {
    state.mapOrNull(
        loaded: (loadedState) => emit(loadedState.copyWith(booking: booking)));
  }

  void toggleEditMode() {
    state.mapOrNull(
        loaded: (loadedState) =>
            emit(loadedState.copyWith(editMode: !loadedState.editMode)));
  }
}
