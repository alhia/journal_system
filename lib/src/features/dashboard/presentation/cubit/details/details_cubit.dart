import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bookings_repository/bookings_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_cubit.freezed.dart';
part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final BookingsRepository bookingsRepository;
  DetailsCubit(this.bookingsRepository) : super(const DetailsState.initial());
  StreamSubscription<Booking>? _bookingSubscription;

  void load(String rid) {
    _bookingSubscription?.cancel();
    _bookingSubscription = bookingsRepository.booking(rid).listen((booking) {
      emit(DetailsState.loaded(booking));
    });
  }
}
