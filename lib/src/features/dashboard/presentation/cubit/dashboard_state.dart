part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loaded({
    @Default([]) List<SearchModel> searchResult,
  }) = _Loaded;
  const factory DashboardState.showPatient({
    required String selectedRid,
  }) = _ShowPatient;
}
