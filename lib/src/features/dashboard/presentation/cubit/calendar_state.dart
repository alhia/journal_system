part of 'calendar_cubit.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.initial() = _Initial;
  const factory CalendarState.loaded(
    List<Booking> bookings, {
    required VisibleDays visibleDays,
    required DateTime selectedDay,
    required DateTime focusedDay,
    @Default([]) List<Booking> selectedEvents,
  }) = _Loaded;
}
