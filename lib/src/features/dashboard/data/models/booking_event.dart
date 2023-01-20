import 'package:bookings_repository/bookings_repository.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:timetable/timetable.dart';

class BookingEvent extends BasicEvent {
  BookingEvent(this.booking)
      : super(
          backgroundColor: Colors.red,
          id: booking.rid,
          start: booking.startsAt.toUtc().add(const Duration(hours: 1)),
          end: booking.endsAt.toUtc().add(const Duration(hours: 1)),
          title: "${booking.firstName} ${booking.lastName}",
        );
  final Booking booking;
}
