import 'package:cloud_firestore/cloud_firestore.dart';

DocumentReference firestoreDocRefFromJson(dynamic value) {
  if (value is DocumentReference) {
    return FirebaseFirestore.instance.doc(value.path);
  } else if (value is String) {
    return FirebaseFirestore.instance.doc(value);
  }
  return FirebaseFirestore.instance.doc('');
}

List<DocumentReference> firestoreDocRefListFromJson(List values) {
  return values.map(firestoreDocRefFromJson).toList();
}

/// This method only stores the "relation" data type back in the Firestore
dynamic firestoreDocRefToJson(dynamic value) => value;

/// Deserialize Firebase Timestamp data type from Firestore
Timestamp firestoreTimestampFromJson(dynamic value) {
  return value != null ? Timestamp.fromMicrosecondsSinceEpoch(value) : value;
}

/// This method only stores the "timestamp" data type back in the Firestore
dynamic firestoreTimestampToJson(dynamic value) => value;
