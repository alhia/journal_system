import 'package:bookings_repository/src/fb_helpers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'booking.g.dart';

@JsonSerializable()
class Booking extends Equatable {
  static final ref =
      FirebaseFirestore.instance.collection('bookings').withConverter<Booking>(
            fromFirestore: (snapshot, _) {
              return Booking.fromJson(snapshot.data()!);
            },
            toFirestore: (booking, _) => booking.toJson(),
          );

  /// {@macro user}
  const Booking({
    required this.createdAt,
    required this.lastName,
    required this.socialSecurityNumber,
    required this.endsAt,
    required this.passportNumber,
    required this.startsAt,
    required this.email,
    required this.firstName,
    required this.phoneNumber,
    required this.rid,
    required this.status,
    required this.clinicRef,
    required this.serviceRef,
    this.events = const [],
  });

  /// The current user's name (display name).
  final String firstName;
  final String passportNumber;
  final String lastName;
  @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
  final DocumentReference clinicRef;
  @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
  final DocumentReference serviceRef;
  final String socialSecurityNumber;

  /// Phone number of reservation
  final String phoneNumber;

  /// The current user's email address.
  final String email;

  @JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeAsIs)
  final DateTime startsAt;
  @JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeAsIs)
  final DateTime endsAt;
  @JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeAsIs)
  final DateTime createdAt;
  final Status status;
  final List<BookingEvent> events;

  final String rid;
  String get fullName => "$firstName $lastName";

  /// Empty user which represents an unauthenticated user.
  static final Booking empty = Booking(
    createdAt: DateTime.now(),
    email: '',
    phoneNumber: '3123',
    firstName: '',
    startsAt: DateTime.now(),
    endsAt: DateTime.now(),
    lastName: '',
    passportNumber: '',
    socialSecurityNumber: '',
    rid: '',
    status: Status.pending,
    clinicRef: FirebaseFirestore.instance.doc('documentPath'),
    serviceRef: FirebaseFirestore.instance.doc('documentPath'),
  );

  @override
  List<Object> get props => [email, phoneNumber, firstName, endsAt];

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
  Map<String, dynamic> toJson() => _$BookingToJson(this);

  Booking copyWith({
    String? firstName,
    String? passportNumber,
    String? lastName,
    DocumentReference? clinicRef,
    DocumentReference? serviceRef,
    String? socialSecurityNumber,
    String? phoneNumber,
    String? email,
    DateTime? startsAt,
    DateTime? endsAt,
    DateTime? createdAt,
    Status? status,
    List<BookingEvent>? events,
    String? rid,
  }) {
    return Booking(
      firstName: firstName ?? this.firstName,
      passportNumber: passportNumber ?? this.passportNumber,
      lastName: lastName ?? this.lastName,
      clinicRef: clinicRef ?? this.clinicRef,
      serviceRef: serviceRef ?? this.serviceRef,
      socialSecurityNumber: socialSecurityNumber ?? this.socialSecurityNumber,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
      events: events ?? this.events,
      rid: rid ?? this.rid,
    );
  }
}

DateTime _dateTimeAsIs(DateTime dateTime) =>
    dateTime; //<-- pass through no need for generated code to perform any formatting

// https://stackoverflow.com/questions/56627888/how-to-print-firestore-timestamp-as-formatted-date-and-time-in-flutter
DateTime _dateTimeFromTimestamp(Timestamp timestamp) {
  return DateTime.parse(timestamp.toDate().toString());
}

extension HoursMinutes on DateTime {
  String get hoursAndMinutes => DateFormat('Hm').format(this);
}

@Collection<Booking>('bookings')
final bookingsRef = BookingCollectionReference();

enum Status {
  pending,
  testing,
  done,
  all,
}

@JsonSerializable()
class User extends Equatable {
  final String id;
  final String email;
  final String firstName;
  final String lastName;

  const User(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName});
  // Apply the validator
  static const empty = User(id: '', email: '', firstName: '', lastName: '');
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, id, firstName];
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}

@JsonSerializable()
class BookingEvent extends Equatable {
  final BookingEventType type;
  @JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeAsIs)
  final DateTime createdAt;
  @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
  final DocumentReference creator;

  final String notes;

  const BookingEvent(
      {required this.type,
      required this.createdAt,
      required this.creator,
      required this.notes});

  @override
  List<Object> get props => [type, createdAt, creator, notes];

  Map<String, dynamic> toJson() => _$BookingEventToJson(this);

  factory BookingEvent.fromJson(Map<String, dynamic> map) =>
      _$BookingEventFromJson(map);
}

enum BookingEventType {
  note,
  testing,
  done,
}
