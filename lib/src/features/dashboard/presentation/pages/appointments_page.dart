import 'package:bookings_repository/bookings_repository.dart' hide BookingEvent;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:timetable/timetable.dart';

import '../../data/models/booking_event.dart';
import '../cubit/appointments/appointments_cubit.dart';
import '../cubit/calendar_cubit.dart';
import 'appointments_detail_page.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CalendarCubit(context.read<BookingsRepository>())
            ..getEventsByRange(DateTime(today.year, today.month - 3, today.day),
                DateTime(today.year, today.month + 3, today.day)),
        ),
        BlocProvider(
          create: (context) => AppointmentsCubit()..load(),
        )
      ],
      child: BlocListener<AppointmentsCubit, AppointmentsState>(
        listener: (context, state) {
          final appointmentsCubit = context.read<AppointmentsCubit>();

          state.whenOrNull(
              details: (rid) => showDialog(
                  barrierDismissible: true,
                  context: context,
                  routeSettings: RouteSettings(name: "/$rid"),
                  useRootNavigator: false,
                  builder: (context) => AppointmentsDetailsPage(
                        rid: rid,
                      )).then((value) => appointmentsCubit.load()));
        },
        child: BlocBuilder<CalendarCubit, CalendarState>(
          builder: (context, state) {
            final calendarCubit = context.read<CalendarCubit>();
            final appointmentsCubit = context.read<AppointmentsCubit>();

            return state.maybeMap(
              loaded: (loadedState) => Scaffold(
/*                 body: Row(
                  children: [
                    CupertinoSlidingSegmentedControl<VisibleDays>(
                        children: const {
                          VisibleDays.week: Text("Week"),
                          VisibleDays.day: Text("Day"),
                        },
                        groupValue: loadedState.visibleDays,
                        onValueChanged: calendarCubit.toggleHeaderFormat)
                  ],
                ), */
                body: TimetableConfig<BookingEvent>(
                  // Required:
                  dateController: calendarCubit.dateController,
                  timeController: calendarCubit.timeController,
                  eventBuilder: (context, event) => Builder(builder: (context) {
                    return JustTheTooltip(
                      triggerMode: TooltipTriggerMode.tap,
                      preferredDirection: AxisDirection.up,
                      barrierDismissible: true,
                      isModal: true,
                      content: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                                "${event.booking.firstName} ${event.booking.lastName}"),
                            Text("${event.booking.email} "),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                /*  const Icon(Icons.timer),
                                OutlinedButton(
                                    style: ButtonStyle(
                                        border: ButtonState.all<BorderSide>(
                                            BorderSide(
                                                color: event.booking.status ==
                                                        Status.testing
                                                    ? Colors.green
                                                    : Colors.blue))),
                                    child: const Text("check in"),
                                    onPressed: () => calendarCubit
                                        .checkInBooking(event.booking))
 */
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: BasicEventWidget(
                        event,
                        /*   onTap: () =>
                                  appointmentsCubit.showDetails(event.booking.rid),
                          */
                      ),
                    );
                  }),
                  child: MultiDateTimetable<BookingEvent>(),

                  // Optional:

                  eventProvider: (date) => calendarCubit
                      .getEventsByDay(date.start)
                      .map((e) => BookingEvent(e))
                      .toList(),
                  allDayEventBuilder: (context, event, info) =>
                      BasicAllDayEventWidget(event, info: info),
                  callbacks: const TimetableCallbacks(
                      // onWeekTap, onDateTap, onDateBackgroundTap, onDateTimeBackgroundTap
                      ),
                  theme: TimetableThemeData(context,
                      dateDividersStyle: DateDividersStyle(context, width: 2),
                      dateHeaderStyleProvider: (date) => DateHeaderStyle(
                            context,
                            date,
                            showDateIndicator: false,
                          ),
                      dateIndicatorStyleProvider: (date) => DateIndicatorStyle(
                            context,
                            date,
                            decoration: BoxDecoration(
                              color: date.isToday
                                  ? Colors.black
                                  : Colors.transparent,
                            ),
                          ),
                      nowIndicatorStyle: NowIndicatorStyle(
                        context,
                        lineColor: const Color(0xFF2662F0),
                        shape: CircleNowIndicatorShape(
                            color: const Color(0xFF2662F0)),
                      ),
                      weekdayIndicatorStyleProvider: (date) =>
                          WeekdayIndicatorStyle(context, date,
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                color: date.isToday
                                    ? const Color(0xFF414D55)
                                    : Colors.transparent,
                              ),
                              textStyle: TextStyle(
                                color: date.isToday
                                    ? Colors.white
                                    : const Color(0xFF414D55),
                              ),
                              label:
                                  "${DateFormat('EEEE').format(date)}, ${date.day}"),
                      timeIndicatorStyleProvider: (time) => TimeIndicatorStyle(
                            context,
                            time,
                          )
                      // startOfWeek: DateTime.monday,
                      // See the "Theming" section below for more options.
                      ),
                ),
              ),
              orElse: () => Container(),
            );
          },
        ),
      ),
    );
  }
}
