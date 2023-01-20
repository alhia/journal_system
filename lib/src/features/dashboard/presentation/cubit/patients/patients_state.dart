part of 'patients_cubit.dart';

@freezed
class PatientsState with _$PatientsState {
  const factory PatientsState.initial() = _Initial;
  const factory PatientsState.loaded(
    List<Booking> bookings, {
    @Default([]) List<SearchModel> searchResult,
    @Default([]) List<String> selectedBookings,
    @Default(PatientsFilters()) PatientsFilters filters,
  }) = _Loaded;
}

class PatientsFilters {
  final Status status;

  const PatientsFilters({
    this.status = Status.all,
  });

  PatientsFilters copyWith({
    Status? status,
    Type? type,
  }) {
    return PatientsFilters(
      status: status ?? this.status,
    );
  }
}
