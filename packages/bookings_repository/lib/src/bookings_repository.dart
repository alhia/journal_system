import 'package:bookings_repository/src/models/booking.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BookingsRepository {
  final _bookingsRef =
      FirebaseFirestore.instance.collection('bookings').withConverter<Booking>(
            fromFirestore: (snapshot, _) {
              return Booking.fromJson(snapshot.data()!);
            },
            toFirestore: (booking, _) => booking.toJson(),
          );

  Stream<List<Booking>> bookings() {
    final snapshot = bookingsRef.snapshots();
    return snapshot
        .map((event) => event.docs)
        .map((event) => event.map((e) => e.data).toList());
  }

  Stream<Booking> booking(String rid) {
    final query = bookingsRef.whereRid(isEqualTo: rid);
    return query.snapshots().map((event) => event.docs.first.data);
  }

  Future<void> updateBooking(Booking booking) async {
    await bookingsRef.doc(booking.rid).set(booking);
  }

  Stream<List<Booking>> bookingsByDateStream(
      DateTime startDate, DateTime endDate) {
    final start = Timestamp.fromDate(startDate);
    final end = Timestamp.fromDate(endDate);
    final query =
        _bookingsRef.orderBy('startsAt').startAt([start]).endAt([end]);
    return query
        .snapshots()
        .map((snapshot) => snapshot.docs.map((e) => e.data()).toList());
  }

/*   List<Booking> bookingsByDate(DateTime startDate, DateTime endDate) {
    final start = Timestamp.fromDate(startDate);
    final end = Timestamp.fromDate(endDate);
    final query =
        _bookingsRef.orderBy('startsAt').startAt([start]).endAt([end]);
    return query.get();
  } */

  Stream<Booking> latestBooking() {
    final snapshot = bookingsRef.snapshots();
    return snapshot
        .map((event) => event.docs)
        .map((event) => event.map((e) => e.data).first);
  }
}

/* extension CompareDate on DateTime {
  bool isSameDay(DateTime? otherDate) {
    if (otherDate == null) {
      return false;
    }

    return year == otherDate.year &&
        month == otherDate.month &&
        day == otherDate.day;
  }
} */
