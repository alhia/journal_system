part of 'appointments_cubit.dart';

@freezed
class AppointmentsState with _$AppointmentsState {
  const factory AppointmentsState.initial() = _Initial;
  const factory AppointmentsState.loaded() = _Loaded;
  const factory AppointmentsState.details(String rid) = _Details;
}
