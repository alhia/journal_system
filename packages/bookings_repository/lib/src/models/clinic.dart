import 'package:bookings_repository/src/fb_helpers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic.freezed.dart';
part 'clinic.g.dart';

@freezed
class Clinic with _$Clinic {
  static final ref =
      FirebaseFirestore.instance.collection('clinics').withConverter<Clinic>(
            fromFirestore: (snapshot, _) {
              return Clinic.fromSnapshot(snapshot);
            },
            toFirestore: (clinic, _) => clinic.toJson(),
          );

  const factory Clinic(
      {String? id,
      required String name,
      required String address,
      required String city,
      // ignore: invalid_annotation_target
      @JsonKey(fromJson: firestoreDocRefListFromJson, toJson: firestoreDocRefToJson)
          required List<DocumentReference> servicesRef,
      // ignore: invalid_annotation_target
      @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
          required DocumentReference settingsRef,
      required String zip}) = _Clinic;

  factory Clinic.fromJson(Map<String, dynamic> source) =>
      _$ClinicFromJson(source);

  factory Clinic.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data()! as Map<String, dynamic>;

    return Clinic.fromJson(data).copyWith(id: snapshot.id);
  }
}

@freezed
class ClinicOperations with _$ClinicOperations {
  const factory ClinicOperations.add(Clinic clinic) = Add;
  const factory ClinicOperations.update(Clinic clinic) = Update;
  const factory ClinicOperations.delete(Clinic clinic) = Delete;
}
