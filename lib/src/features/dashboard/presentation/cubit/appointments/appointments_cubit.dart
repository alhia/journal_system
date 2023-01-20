import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointments_cubit.freezed.dart';
part 'appointments_state.dart';

class AppointmentsCubit extends Cubit<AppointmentsState> {
  AppointmentsCubit() : super(const AppointmentsState.initial());
  void load() => emit(const AppointmentsState.loaded());
  void showDetails(String rid) => emit(AppointmentsState.details(rid));
}
