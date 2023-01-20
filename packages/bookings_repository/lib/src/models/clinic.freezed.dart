// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clinic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Clinic _$ClinicFromJson(Map<String, dynamic> json) {
  return _Clinic.fromJson(json);
}

/// @nodoc
class _$ClinicTearOff {
  const _$ClinicTearOff();

  _Clinic call(
      {String? id,
      required String name,
      required String address,
      required String city,
      @JsonKey(fromJson: firestoreDocRefListFromJson, toJson: firestoreDocRefToJson)
          required List<DocumentReference<Object?>> servicesRef,
      @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
          required DocumentReference<Object?> settingsRef,
      required String zip}) {
    return _Clinic(
      id: id,
      name: name,
      address: address,
      city: city,
      servicesRef: servicesRef,
      settingsRef: settingsRef,
      zip: zip,
    );
  }

  Clinic fromJson(Map<String, Object?> json) {
    return Clinic.fromJson(json);
  }
}

/// @nodoc
const $Clinic = _$ClinicTearOff();

/// @nodoc
mixin _$Clinic {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: firestoreDocRefListFromJson, toJson: firestoreDocRefToJson)
  List<DocumentReference<Object?>> get servicesRef =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
  DocumentReference<Object?> get settingsRef =>
      throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicCopyWith<Clinic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicCopyWith<$Res> {
  factory $ClinicCopyWith(Clinic value, $Res Function(Clinic) then) =
      _$ClinicCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String name,
      String address,
      String city,
      @JsonKey(fromJson: firestoreDocRefListFromJson, toJson: firestoreDocRefToJson)
          List<DocumentReference<Object?>> servicesRef,
      @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
          DocumentReference<Object?> settingsRef,
      String zip});
}

/// @nodoc
class _$ClinicCopyWithImpl<$Res> implements $ClinicCopyWith<$Res> {
  _$ClinicCopyWithImpl(this._value, this._then);

  final Clinic _value;
  // ignore: unused_field
  final $Res Function(Clinic) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? servicesRef = freezed,
    Object? settingsRef = freezed,
    Object? zip = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      servicesRef: servicesRef == freezed
          ? _value.servicesRef
          : servicesRef // ignore: cast_nullable_to_non_nullable
              as List<DocumentReference<Object?>>,
      settingsRef: settingsRef == freezed
          ? _value.settingsRef
          : settingsRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ClinicCopyWith<$Res> implements $ClinicCopyWith<$Res> {
  factory _$ClinicCopyWith(_Clinic value, $Res Function(_Clinic) then) =
      __$ClinicCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String name,
      String address,
      String city,
      @JsonKey(fromJson: firestoreDocRefListFromJson, toJson: firestoreDocRefToJson)
          List<DocumentReference<Object?>> servicesRef,
      @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
          DocumentReference<Object?> settingsRef,
      String zip});
}

/// @nodoc
class __$ClinicCopyWithImpl<$Res> extends _$ClinicCopyWithImpl<$Res>
    implements _$ClinicCopyWith<$Res> {
  __$ClinicCopyWithImpl(_Clinic _value, $Res Function(_Clinic) _then)
      : super(_value, (v) => _then(v as _Clinic));

  @override
  _Clinic get _value => super._value as _Clinic;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? servicesRef = freezed,
    Object? settingsRef = freezed,
    Object? zip = freezed,
  }) {
    return _then(_Clinic(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      servicesRef: servicesRef == freezed
          ? _value.servicesRef
          : servicesRef // ignore: cast_nullable_to_non_nullable
              as List<DocumentReference<Object?>>,
      settingsRef: settingsRef == freezed
          ? _value.settingsRef
          : settingsRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Clinic with DiagnosticableTreeMixin implements _Clinic {
  const _$_Clinic(
      {this.id,
      required this.name,
      required this.address,
      required this.city,
      @JsonKey(fromJson: firestoreDocRefListFromJson, toJson: firestoreDocRefToJson)
          required this.servicesRef,
      @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
          required this.settingsRef,
      required this.zip});

  factory _$_Clinic.fromJson(Map<String, dynamic> json) =>
      _$$_ClinicFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String city;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: firestoreDocRefListFromJson, toJson: firestoreDocRefToJson)
  final List<DocumentReference<Object?>> servicesRef;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
  final DocumentReference<Object?> settingsRef;
  @override
  final String zip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Clinic(id: $id, name: $name, address: $address, city: $city, servicesRef: $servicesRef, settingsRef: $settingsRef, zip: $zip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Clinic'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('servicesRef', servicesRef))
      ..add(DiagnosticsProperty('settingsRef', settingsRef))
      ..add(DiagnosticsProperty('zip', zip));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Clinic &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.servicesRef, servicesRef) &&
            const DeepCollectionEquality()
                .equals(other.settingsRef, settingsRef) &&
            const DeepCollectionEquality().equals(other.zip, zip));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(servicesRef),
      const DeepCollectionEquality().hash(settingsRef),
      const DeepCollectionEquality().hash(zip));

  @JsonKey(ignore: true)
  @override
  _$ClinicCopyWith<_Clinic> get copyWith =>
      __$ClinicCopyWithImpl<_Clinic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClinicToJson(this);
  }
}

abstract class _Clinic implements Clinic {
  const factory _Clinic(
      {String? id,
      required String name,
      required String address,
      required String city,
      @JsonKey(fromJson: firestoreDocRefListFromJson, toJson: firestoreDocRefToJson)
          required List<DocumentReference<Object?>> servicesRef,
      @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
          required DocumentReference<Object?> settingsRef,
      required String zip}) = _$_Clinic;

  factory _Clinic.fromJson(Map<String, dynamic> json) = _$_Clinic.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String get city;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: firestoreDocRefListFromJson, toJson: firestoreDocRefToJson)
  List<DocumentReference<Object?>> get servicesRef;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: firestoreDocRefFromJson, toJson: firestoreDocRefToJson)
  DocumentReference<Object?> get settingsRef;
  @override
  String get zip;
  @override
  @JsonKey(ignore: true)
  _$ClinicCopyWith<_Clinic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClinicOperationsTearOff {
  const _$ClinicOperationsTearOff();

  Add add(Clinic clinic) {
    return Add(
      clinic,
    );
  }

  Update update(Clinic clinic) {
    return Update(
      clinic,
    );
  }

  Delete delete(Clinic clinic) {
    return Delete(
      clinic,
    );
  }
}

/// @nodoc
const $ClinicOperations = _$ClinicOperationsTearOff();

/// @nodoc
mixin _$ClinicOperations {
  Clinic get clinic => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Clinic clinic) add,
    required TResult Function(Clinic clinic) update,
    required TResult Function(Clinic clinic) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Clinic clinic)? add,
    TResult Function(Clinic clinic)? update,
    TResult Function(Clinic clinic)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Clinic clinic)? add,
    TResult Function(Clinic clinic)? update,
    TResult Function(Clinic clinic)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClinicOperationsCopyWith<ClinicOperations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicOperationsCopyWith<$Res> {
  factory $ClinicOperationsCopyWith(
          ClinicOperations value, $Res Function(ClinicOperations) then) =
      _$ClinicOperationsCopyWithImpl<$Res>;
  $Res call({Clinic clinic});

  $ClinicCopyWith<$Res> get clinic;
}

/// @nodoc
class _$ClinicOperationsCopyWithImpl<$Res>
    implements $ClinicOperationsCopyWith<$Res> {
  _$ClinicOperationsCopyWithImpl(this._value, this._then);

  final ClinicOperations _value;
  // ignore: unused_field
  final $Res Function(ClinicOperations) _then;

  @override
  $Res call({
    Object? clinic = freezed,
  }) {
    return _then(_value.copyWith(
      clinic: clinic == freezed
          ? _value.clinic
          : clinic // ignore: cast_nullable_to_non_nullable
              as Clinic,
    ));
  }

  @override
  $ClinicCopyWith<$Res> get clinic {
    return $ClinicCopyWith<$Res>(_value.clinic, (value) {
      return _then(_value.copyWith(clinic: value));
    });
  }
}

/// @nodoc
abstract class $AddCopyWith<$Res> implements $ClinicOperationsCopyWith<$Res> {
  factory $AddCopyWith(Add value, $Res Function(Add) then) =
      _$AddCopyWithImpl<$Res>;
  @override
  $Res call({Clinic clinic});

  @override
  $ClinicCopyWith<$Res> get clinic;
}

/// @nodoc
class _$AddCopyWithImpl<$Res> extends _$ClinicOperationsCopyWithImpl<$Res>
    implements $AddCopyWith<$Res> {
  _$AddCopyWithImpl(Add _value, $Res Function(Add) _then)
      : super(_value, (v) => _then(v as Add));

  @override
  Add get _value => super._value as Add;

  @override
  $Res call({
    Object? clinic = freezed,
  }) {
    return _then(Add(
      clinic == freezed
          ? _value.clinic
          : clinic // ignore: cast_nullable_to_non_nullable
              as Clinic,
    ));
  }
}

/// @nodoc

class _$Add with DiagnosticableTreeMixin implements Add {
  const _$Add(this.clinic);

  @override
  final Clinic clinic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClinicOperations.add(clinic: $clinic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClinicOperations.add'))
      ..add(DiagnosticsProperty('clinic', clinic));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Add &&
            const DeepCollectionEquality().equals(other.clinic, clinic));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clinic));

  @JsonKey(ignore: true)
  @override
  $AddCopyWith<Add> get copyWith => _$AddCopyWithImpl<Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Clinic clinic) add,
    required TResult Function(Clinic clinic) update,
    required TResult Function(Clinic clinic) delete,
  }) {
    return add(clinic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Clinic clinic)? add,
    TResult Function(Clinic clinic)? update,
    TResult Function(Clinic clinic)? delete,
  }) {
    return add?.call(clinic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Clinic clinic)? add,
    TResult Function(Clinic clinic)? update,
    TResult Function(Clinic clinic)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(clinic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements ClinicOperations {
  const factory Add(Clinic clinic) = _$Add;

  @override
  Clinic get clinic;
  @override
  @JsonKey(ignore: true)
  $AddCopyWith<Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCopyWith<$Res>
    implements $ClinicOperationsCopyWith<$Res> {
  factory $UpdateCopyWith(Update value, $Res Function(Update) then) =
      _$UpdateCopyWithImpl<$Res>;
  @override
  $Res call({Clinic clinic});

  @override
  $ClinicCopyWith<$Res> get clinic;
}

/// @nodoc
class _$UpdateCopyWithImpl<$Res> extends _$ClinicOperationsCopyWithImpl<$Res>
    implements $UpdateCopyWith<$Res> {
  _$UpdateCopyWithImpl(Update _value, $Res Function(Update) _then)
      : super(_value, (v) => _then(v as Update));

  @override
  Update get _value => super._value as Update;

  @override
  $Res call({
    Object? clinic = freezed,
  }) {
    return _then(Update(
      clinic == freezed
          ? _value.clinic
          : clinic // ignore: cast_nullable_to_non_nullable
              as Clinic,
    ));
  }
}

/// @nodoc

class _$Update with DiagnosticableTreeMixin implements Update {
  const _$Update(this.clinic);

  @override
  final Clinic clinic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClinicOperations.update(clinic: $clinic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClinicOperations.update'))
      ..add(DiagnosticsProperty('clinic', clinic));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Update &&
            const DeepCollectionEquality().equals(other.clinic, clinic));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clinic));

  @JsonKey(ignore: true)
  @override
  $UpdateCopyWith<Update> get copyWith =>
      _$UpdateCopyWithImpl<Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Clinic clinic) add,
    required TResult Function(Clinic clinic) update,
    required TResult Function(Clinic clinic) delete,
  }) {
    return update(clinic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Clinic clinic)? add,
    TResult Function(Clinic clinic)? update,
    TResult Function(Clinic clinic)? delete,
  }) {
    return update?.call(clinic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Clinic clinic)? add,
    TResult Function(Clinic clinic)? update,
    TResult Function(Clinic clinic)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(clinic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements ClinicOperations {
  const factory Update(Clinic clinic) = _$Update;

  @override
  Clinic get clinic;
  @override
  @JsonKey(ignore: true)
  $UpdateCopyWith<Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCopyWith<$Res>
    implements $ClinicOperationsCopyWith<$Res> {
  factory $DeleteCopyWith(Delete value, $Res Function(Delete) then) =
      _$DeleteCopyWithImpl<$Res>;
  @override
  $Res call({Clinic clinic});

  @override
  $ClinicCopyWith<$Res> get clinic;
}

/// @nodoc
class _$DeleteCopyWithImpl<$Res> extends _$ClinicOperationsCopyWithImpl<$Res>
    implements $DeleteCopyWith<$Res> {
  _$DeleteCopyWithImpl(Delete _value, $Res Function(Delete) _then)
      : super(_value, (v) => _then(v as Delete));

  @override
  Delete get _value => super._value as Delete;

  @override
  $Res call({
    Object? clinic = freezed,
  }) {
    return _then(Delete(
      clinic == freezed
          ? _value.clinic
          : clinic // ignore: cast_nullable_to_non_nullable
              as Clinic,
    ));
  }
}

/// @nodoc

class _$Delete with DiagnosticableTreeMixin implements Delete {
  const _$Delete(this.clinic);

  @override
  final Clinic clinic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClinicOperations.delete(clinic: $clinic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClinicOperations.delete'))
      ..add(DiagnosticsProperty('clinic', clinic));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Delete &&
            const DeepCollectionEquality().equals(other.clinic, clinic));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clinic));

  @JsonKey(ignore: true)
  @override
  $DeleteCopyWith<Delete> get copyWith =>
      _$DeleteCopyWithImpl<Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Clinic clinic) add,
    required TResult Function(Clinic clinic) update,
    required TResult Function(Clinic clinic) delete,
  }) {
    return delete(clinic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Clinic clinic)? add,
    TResult Function(Clinic clinic)? update,
    TResult Function(Clinic clinic)? delete,
  }) {
    return delete?.call(clinic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Clinic clinic)? add,
    TResult Function(Clinic clinic)? update,
    TResult Function(Clinic clinic)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(clinic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements ClinicOperations {
  const factory Delete(Clinic clinic) = _$Delete;

  @override
  Clinic get clinic;
  @override
  @JsonKey(ignore: true)
  $DeleteCopyWith<Delete> get copyWith => throw _privateConstructorUsedError;
}
