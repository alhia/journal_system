part of 'booking_form_cubit.dart';

@freezed
class BookingFormState with _$BookingFormState {
  const factory BookingFormState.initial() = _Initial;
  const factory BookingFormState.loaded(
      {required Clinic clinic,
      required ClinicSettings clinicSettings,
      required DateTime selectedDay,
      required DateTime focusedDay,
      required int step,
      required List<DateTime> availableDates,
      Service? selectedService,
      DateTime? selectedTime}) = _Loaded;
  /* const factory BookingFormState.stepTwo(
      {required Clinic clinic,
      required ClinicSettings clinicSettings}) = _StepTwo;
  const factory BookingFormState.stepThree(
      {required Clinic clinic,
      required ClinicSettings clinicSettings}) = _StepThree; */
}
