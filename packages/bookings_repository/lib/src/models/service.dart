import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
class Service with _$Service {
  static final ref =
      FirebaseFirestore.instance.collection('services').withConverter<Service>(
            fromFirestore: (snapshot, _) {
              return Service.fromSnapshot(snapshot);
            },
            toFirestore: (service, _) => service.toJson(),
          );

  const factory Service({
    String? id,
    required String title,
    required Type type,
    required int price,
    required int minutes,
    required String ridPrefix,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> source) =>
      _$ServiceFromJson(source);

  factory Service.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data()! as Map<String, dynamic>;

    return Service.fromJson(data).copyWith(id: snapshot.id);
  }
}

enum Type {
  pcr,
  antigen,
}
