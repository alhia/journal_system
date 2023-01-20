import 'package:bookings_repository/bookings_repository.dart';
import 'package:dart_date/src/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../dashboard/presentation/cubit/calendar_cubit.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

    return BlocProvider(
      create: (context) => CalendarCubit(context.read<BookingsRepository>())
        ..getEventsByRange(DateTime(today.year, today.month - 3, today.day),
            DateTime(today.year, today.month + 3, today.day)),
      child: BlocBuilder<CalendarCubit, CalendarState>(
        builder: (context, state) {
          final cubit = context.read<CalendarCubit>();

          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TableCalendar<Booking>(
                  rangeSelectionMode: RangeSelectionMode.disabled,
                  calendarFormat: CalendarFormat.week,
                  onPageChanged: cubit.onPageChanged,
                  focusedDay: state.maybeMap(
                      orElse: () => today,
                      loaded: (loadedState) {
                        return loadedState.focusedDay;
                      }),
                  firstDay: DateTime(today.year, today.month - 3, today.day),
                  lastDay: DateTime(today.year, today.month + 3, today.day),
                  eventLoader: cubit.getEventsByDay,
                  onDaySelected: cubit.onDaySelected,
                  selectedDayPredicate: (date) => state.maybeMap(
                      orElse: () => false,
                      loaded: (loadedState) =>
                          date.isSameDay(loadedState.selectedDay)),
                ),
                state.maybeMap(
                  loaded: (loadedState) => ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final booking = loadedState.selectedEvents[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${booking.firstName} ${booking.lastName}",
                          ),
                          const Text("PCR-test"),
                          Row(
                            children: [
                              const Icon(
                                Icons.timer,
                              ),
                              Text(
                                  "${booking.startsAt.hoursAndMinutes} - ${booking.endsAt.hoursAndMinutes}")
                            ],
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: loadedState.selectedEvents.length,
                  ),
                  orElse: () => Container(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
