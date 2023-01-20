// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class BookingCollectionReference
    implements
        BookingQuery,
        FirestoreCollectionReference<BookingQuerySnapshot> {
  factory BookingCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$BookingCollectionReference;

  static Booking fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Booking.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Booking value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  BookingDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<BookingDocumentReference> add(Booking value);
}

class _$BookingCollectionReference extends _$BookingQuery
    implements BookingCollectionReference {
  factory _$BookingCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$BookingCollectionReference._(
      firestore.collection('bookings').withConverter(
            fromFirestore: BookingCollectionReference.fromFirestore,
            toFirestore: BookingCollectionReference.toFirestore,
          ),
    );
  }

  _$BookingCollectionReference._(
    CollectionReference<Booking> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<Booking> get reference =>
      super.reference as CollectionReference<Booking>;

  @override
  BookingDocumentReference doc([String? id]) {
    return BookingDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<BookingDocumentReference> add(Booking value) {
    return reference.add(value).then((ref) => BookingDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$BookingCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class BookingDocumentReference
    extends FirestoreDocumentReference<BookingDocumentSnapshot> {
  factory BookingDocumentReference(DocumentReference<Booking> reference) =
      _$BookingDocumentReference;

  DocumentReference<Booking> get reference;

  /// A reference to the [BookingCollectionReference] containing this document.
  BookingCollectionReference get parent {
    return _$BookingCollectionReference(reference.firestore);
  }

  @override
  Stream<BookingDocumentSnapshot> snapshots();

  @override
  Future<BookingDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String firstName,
    String passportNumber,
    String lastName,
    String socialSecurityNumber,
    String phoneNumber,
    String email,
    List<BookingEvent> events,
    String rid,
    String fullName,
    List<Object> props,
  });

  Future<void> set(Booking value);
}

class _$BookingDocumentReference
    extends FirestoreDocumentReference<BookingDocumentSnapshot>
    implements BookingDocumentReference {
  _$BookingDocumentReference(this.reference);

  @override
  final DocumentReference<Booking> reference;

  /// A reference to the [BookingCollectionReference] containing this document.
  BookingCollectionReference get parent {
    return _$BookingCollectionReference(reference.firestore);
  }

  @override
  Stream<BookingDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return BookingDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<BookingDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return BookingDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? firstName = _sentinel,
    Object? passportNumber = _sentinel,
    Object? lastName = _sentinel,
    Object? socialSecurityNumber = _sentinel,
    Object? phoneNumber = _sentinel,
    Object? email = _sentinel,
    Object? events = _sentinel,
    Object? rid = _sentinel,
    Object? fullName = _sentinel,
    Object? props = _sentinel,
  }) async {
    final json = {
      if (firstName != _sentinel) "firstName": firstName as String,
      if (passportNumber != _sentinel)
        "passportNumber": passportNumber as String,
      if (lastName != _sentinel) "lastName": lastName as String,
      if (socialSecurityNumber != _sentinel)
        "socialSecurityNumber": socialSecurityNumber as String,
      if (phoneNumber != _sentinel) "phoneNumber": phoneNumber as String,
      if (email != _sentinel) "email": email as String,
      if (events != _sentinel) "events": events as List<BookingEvent>,
      if (rid != _sentinel) "rid": rid as String,
      if (fullName != _sentinel) "fullName": fullName as String,
      if (props != _sentinel) "props": props as List<Object>,
    };

    return reference.update(json);
  }

  Future<void> set(Booking value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is BookingDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class BookingDocumentSnapshot extends FirestoreDocumentSnapshot {
  BookingDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Booking> snapshot;

  @override
  BookingDocumentReference get reference {
    return BookingDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Booking? data;
}

abstract class BookingQuery implements QueryReference<BookingQuerySnapshot> {
  @override
  BookingQuery limit(int limit);

  @override
  BookingQuery limitToLast(int limit);

  BookingQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BookingQuery wherePassportNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BookingQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BookingQuery whereSocialSecurityNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BookingQuery wherePhoneNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BookingQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BookingQuery whereEvents({
    List<BookingEvent>? isEqualTo,
    List<BookingEvent>? isNotEqualTo,
    List<BookingEvent>? isLessThan,
    List<BookingEvent>? isLessThanOrEqualTo,
    List<BookingEvent>? isGreaterThan,
    List<BookingEvent>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<BookingEvent>? arrayContainsAny,
  });
  BookingQuery whereRid({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BookingQuery whereFullName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BookingQuery whereProps({
    List<Object>? isEqualTo,
    List<Object>? isNotEqualTo,
    List<Object>? isLessThan,
    List<Object>? isLessThanOrEqualTo,
    List<Object>? isGreaterThan,
    List<Object>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Object>? arrayContainsAny,
  });

  BookingQuery orderByFirstName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  });

  BookingQuery orderByPassportNumber({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  });

  BookingQuery orderByLastName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  });

  BookingQuery orderBySocialSecurityNumber({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  });

  BookingQuery orderByPhoneNumber({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  });

  BookingQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  });

  BookingQuery orderByEvents({
    bool descending = false,
    List<BookingEvent> startAt,
    List<BookingEvent> startAfter,
    List<BookingEvent> endAt,
    List<BookingEvent> endBefore,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  });

  BookingQuery orderByRid({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  });

  BookingQuery orderByFullName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  });

  BookingQuery orderByProps({
    bool descending = false,
    List<Object> startAt,
    List<Object> startAfter,
    List<Object> endAt,
    List<Object> endBefore,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  });
}

class _$BookingQuery extends QueryReference<BookingQuerySnapshot>
    implements BookingQuery {
  _$BookingQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Booking> reference;

  BookingQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Booking> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return BookingQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<BookingDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: BookingDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return BookingQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<BookingQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<BookingQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  BookingQuery limit(int limit) {
    return _$BookingQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  BookingQuery limitToLast(int limit) {
    return _$BookingQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  BookingQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BookingQuery(
      reference.where(
        'firstName',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BookingQuery wherePassportNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BookingQuery(
      reference.where(
        'passportNumber',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BookingQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BookingQuery(
      reference.where(
        'lastName',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BookingQuery whereSocialSecurityNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BookingQuery(
      reference.where(
        'socialSecurityNumber',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BookingQuery wherePhoneNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BookingQuery(
      reference.where(
        'phoneNumber',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BookingQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BookingQuery(
      reference.where(
        'email',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BookingQuery whereEvents({
    List<BookingEvent>? isEqualTo,
    List<BookingEvent>? isNotEqualTo,
    List<BookingEvent>? isLessThan,
    List<BookingEvent>? isLessThanOrEqualTo,
    List<BookingEvent>? isGreaterThan,
    List<BookingEvent>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<BookingEvent>? arrayContainsAny,
  }) {
    return _$BookingQuery(
      reference.where(
        'events',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContainsAny: arrayContainsAny,
      ),
      _collection,
    );
  }

  BookingQuery whereRid({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BookingQuery(
      reference.where(
        'rid',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BookingQuery whereFullName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BookingQuery(
      reference.where(
        'fullName',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BookingQuery whereProps({
    List<Object>? isEqualTo,
    List<Object>? isNotEqualTo,
    List<Object>? isLessThan,
    List<Object>? isLessThanOrEqualTo,
    List<Object>? isGreaterThan,
    List<Object>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Object>? arrayContainsAny,
  }) {
    return _$BookingQuery(
      reference.where(
        'props',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContainsAny: arrayContainsAny,
      ),
      _collection,
    );
  }

  BookingQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('firstName', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BookingQuery(query, _collection);
  }

  BookingQuery orderByPassportNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('passportNumber', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BookingQuery(query, _collection);
  }

  BookingQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('lastName', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BookingQuery(query, _collection);
  }

  BookingQuery orderBySocialSecurityNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('socialSecurityNumber', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BookingQuery(query, _collection);
  }

  BookingQuery orderByPhoneNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('phoneNumber', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BookingQuery(query, _collection);
  }

  BookingQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('email', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BookingQuery(query, _collection);
  }

  BookingQuery orderByEvents({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('events', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BookingQuery(query, _collection);
  }

  BookingQuery orderByRid({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('rid', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BookingQuery(query, _collection);
  }

  BookingQuery orderByFullName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('fullName', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BookingQuery(query, _collection);
  }

  BookingQuery orderByProps({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookingDocumentSnapshot? startAtDocument,
    BookingDocumentSnapshot? endAtDocument,
    BookingDocumentSnapshot? endBeforeDocument,
    BookingDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('props', descending: false);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BookingQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$BookingQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class BookingQuerySnapshot
    extends FirestoreQuerySnapshot<BookingQueryDocumentSnapshot> {
  BookingQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Booking> snapshot;

  @override
  final List<BookingQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<BookingDocumentSnapshot>> docChanges;
}

class BookingQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements BookingDocumentSnapshot {
  BookingQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Booking> snapshot;

  @override
  BookingDocumentReference get reference {
    return BookingDocumentReference(snapshot.reference);
  }

  @override
  final Booking data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      createdAt: _dateTimeFromTimestamp(json['createdAt'] as Timestamp),
      lastName: json['lastName'] as String,
      socialSecurityNumber: json['socialSecurityNumber'] as String,
      endsAt: _dateTimeFromTimestamp(json['endsAt'] as Timestamp),
      passportNumber: json['passportNumber'] as String,
      startsAt: _dateTimeFromTimestamp(json['startsAt'] as Timestamp),
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      rid: json['rid'] as String,
      status: $enumDecode(_$StatusEnumMap, json['status']),
      clinicRef: firestoreDocRefFromJson(json['clinicRef']),
      serviceRef: firestoreDocRefFromJson(json['serviceRef']),
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => BookingEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'passportNumber': instance.passportNumber,
      'lastName': instance.lastName,
      'clinicRef': firestoreDocRefToJson(instance.clinicRef),
      'serviceRef': firestoreDocRefToJson(instance.serviceRef),
      'socialSecurityNumber': instance.socialSecurityNumber,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'startsAt': _dateTimeAsIs(instance.startsAt),
      'endsAt': _dateTimeAsIs(instance.endsAt),
      'createdAt': _dateTimeAsIs(instance.createdAt),
      'status': _$StatusEnumMap[instance.status],
      'events': instance.events.map((e) => e.toJson()).toList(),
      'rid': instance.rid,
    };

const _$StatusEnumMap = {
  Status.pending: 'pending',
  Status.testing: 'testing',
  Status.done: 'done',
  Status.all: 'all',
};

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

BookingEvent _$BookingEventFromJson(Map<String, dynamic> json) => BookingEvent(
      type: $enumDecode(_$BookingEventTypeEnumMap, json['type']),
      createdAt: _dateTimeFromTimestamp(json['createdAt'] as Timestamp),
      creator: firestoreDocRefFromJson(json['creator']),
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$BookingEventToJson(BookingEvent instance) =>
    <String, dynamic>{
      'type': _$BookingEventTypeEnumMap[instance.type],
      'createdAt': _dateTimeAsIs(instance.createdAt),
      'creator': firestoreDocRefToJson(instance.creator),
      'notes': instance.notes,
    };

const _$BookingEventTypeEnumMap = {
  BookingEventType.note: 'note',
  BookingEventType.testing: 'testing',
  BookingEventType.done: 'done',
};
