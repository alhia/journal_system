part of 'services_cubit.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState.initial() = _Initial;
  const factory ServicesState.loaded(List<Service> services) = _Loaded;
}
