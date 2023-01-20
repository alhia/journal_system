part of 'patients_details_cubit.dart';

@freezed
class PatientsDetailsState with _$PatientsDetailsState {
  const factory PatientsDetailsState.initial() = _Initial;
  const factory PatientsDetailsState.loaded(Booking booking,
      {@Default(false) bool editMode}) = _Loaded;
}
