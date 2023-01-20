// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clinic_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClinicSettings _$ClinicSettingsFromJson(Map<String, dynamic> json) {
  return _ClinicSettings.fromJson(json);
}

/// @nodoc
class _$ClinicSettingsTearOff {
  const _$ClinicSettingsTearOff();

  _ClinicSettings call(
      {String? id,
      required int interval,
      required int bookingsPerSlot,
      required OpenDays openDays}) {
    return _ClinicSettings(
      id: id,
      interval: interval,
      bookingsPerSlot: bookingsPerSlot,
      openDays: openDays,
    );
  }

  ClinicSettings fromJson(Map<String, Object?> json) {
    return ClinicSettings.fromJson(json);
  }
}

/// @nodoc
const $ClinicSettings = _$ClinicSettingsTearOff();

/// @nodoc
mixin _$ClinicSettings {
  String? get id => throw _privateConstructorUsedError;
  int get interval => throw _privateConstructorUsedError;
  int get bookingsPerSlot => throw _privateConstructorUsedError;
  OpenDays get openDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClinicSettingsCopyWith<ClinicSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicSettingsCopyWith<$Res> {
  factory $ClinicSettingsCopyWith(
          ClinicSettings value, $Res Function(ClinicSettings) then) =
      _$ClinicSettingsCopyWithImpl<$Res>;
  $Res call({String? id, int interval, int bookingsPerSlot, OpenDays openDays});

  $OpenDaysCopyWith<$Res> get openDays;
}

/// @nodoc
class _$ClinicSettingsCopyWithImpl<$Res>
    implements $ClinicSettingsCopyWith<$Res> {
  _$ClinicSettingsCopyWithImpl(this._value, this._then);

  final ClinicSettings _value;
  // ignore: unused_field
  final $Res Function(ClinicSettings) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? interval = freezed,
    Object? bookingsPerSlot = freezed,
    Object? openDays = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      bookingsPerSlot: bookingsPerSlot == freezed
          ? _value.bookingsPerSlot
          : bookingsPerSlot // ignore: cast_nullable_to_non_nullable
              as int,
      openDays: openDays == freezed
          ? _value.openDays
          : openDays // ignore: cast_nullable_to_non_nullable
              as OpenDays,
    ));
  }

  @override
  $OpenDaysCopyWith<$Res> get openDays {
    return $OpenDaysCopyWith<$Res>(_value.openDays, (value) {
      return _then(_value.copyWith(openDays: value));
    });
  }
}

/// @nodoc
abstract class _$ClinicSettingsCopyWith<$Res>
    implements $ClinicSettingsCopyWith<$Res> {
  factory _$ClinicSettingsCopyWith(
          _ClinicSettings value, $Res Function(_ClinicSettings) then) =
      __$ClinicSettingsCopyWithImpl<$Res>;
  @override
  $Res call({String? id, int interval, int bookingsPerSlot, OpenDays openDays});

  @override
  $OpenDaysCopyWith<$Res> get openDays;
}

/// @nodoc
class __$ClinicSettingsCopyWithImpl<$Res>
    extends _$ClinicSettingsCopyWithImpl<$Res>
    implements _$ClinicSettingsCopyWith<$Res> {
  __$ClinicSettingsCopyWithImpl(
      _ClinicSettings _value, $Res Function(_ClinicSettings) _then)
      : super(_value, (v) => _then(v as _ClinicSettings));

  @override
  _ClinicSettings get _value => super._value as _ClinicSettings;

  @override
  $Res call({
    Object? id = freezed,
    Object? interval = freezed,
    Object? bookingsPerSlot = freezed,
    Object? openDays = freezed,
  }) {
    return _then(_ClinicSettings(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      bookingsPerSlot: bookingsPerSlot == freezed
          ? _value.bookingsPerSlot
          : bookingsPerSlot // ignore: cast_nullable_to_non_nullable
              as int,
      openDays: openDays == freezed
          ? _value.openDays
          : openDays // ignore: cast_nullable_to_non_nullable
              as OpenDays,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClinicSettings implements _ClinicSettings {
  const _$_ClinicSettings(
      {this.id,
      required this.interval,
      required this.bookingsPerSlot,
      required this.openDays});

  factory _$_ClinicSettings.fromJson(Map<String, dynamic> json) =>
      _$$_ClinicSettingsFromJson(json);

  @override
  final String? id;
  @override
  final int interval;
  @override
  final int bookingsPerSlot;
  @override
  final OpenDays openDays;

  @override
  String toString() {
    return 'ClinicSettings(id: $id, interval: $interval, bookingsPerSlot: $bookingsPerSlot, openDays: $openDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClinicSettings &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.interval, interval) &&
            const DeepCollectionEquality()
                .equals(other.bookingsPerSlot, bookingsPerSlot) &&
            const DeepCollectionEquality().equals(other.openDays, openDays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(interval),
      const DeepCollectionEquality().hash(bookingsPerSlot),
      const DeepCollectionEquality().hash(openDays));

  @JsonKey(ignore: true)
  @override
  _$ClinicSettingsCopyWith<_ClinicSettings> get copyWith =>
      __$ClinicSettingsCopyWithImpl<_ClinicSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClinicSettingsToJson(this);
  }
}

abstract class _ClinicSettings implements ClinicSettings {
  const factory _ClinicSettings(
      {String? id,
      required int interval,
      required int bookingsPerSlot,
      required OpenDays openDays}) = _$_ClinicSettings;

  factory _ClinicSettings.fromJson(Map<String, dynamic> json) =
      _$_ClinicSettings.fromJson;

  @override
  String? get id;
  @override
  int get interval;
  @override
  int get bookingsPerSlot;
  @override
  OpenDays get openDays;
  @override
  @JsonKey(ignore: true)
  _$ClinicSettingsCopyWith<_ClinicSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenDays _$OpenDaysFromJson(Map<String, dynamic> json) {
  return _OpenDays.fromJson(json);
}

/// @nodoc
class _$OpenDaysTearOff {
  const _$OpenDaysTearOff();

  _OpenDays call(
      {required OpenDay monday,
      required OpenDay tuesday,
      required OpenDay wednesday,
      required OpenDay thursday,
      required OpenDay friday,
      required OpenDay saturday,
      required OpenDay sunday}) {
    return _OpenDays(
      monday: monday,
      tuesday: tuesday,
      wednesday: wednesday,
      thursday: thursday,
      friday: friday,
      saturday: saturday,
      sunday: sunday,
    );
  }

  OpenDays fromJson(Map<String, Object?> json) {
    return OpenDays.fromJson(json);
  }
}

/// @nodoc
const $OpenDays = _$OpenDaysTearOff();

/// @nodoc
mixin _$OpenDays {
  OpenDay get monday => throw _privateConstructorUsedError;
  OpenDay get tuesday => throw _privateConstructorUsedError;
  OpenDay get wednesday => throw _privateConstructorUsedError;
  OpenDay get thursday => throw _privateConstructorUsedError;
  OpenDay get friday => throw _privateConstructorUsedError;
  OpenDay get saturday => throw _privateConstructorUsedError;
  OpenDay get sunday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenDaysCopyWith<OpenDays> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenDaysCopyWith<$Res> {
  factory $OpenDaysCopyWith(OpenDays value, $Res Function(OpenDays) then) =
      _$OpenDaysCopyWithImpl<$Res>;
  $Res call(
      {OpenDay monday,
      OpenDay tuesday,
      OpenDay wednesday,
      OpenDay thursday,
      OpenDay friday,
      OpenDay saturday,
      OpenDay sunday});

  $OpenDayCopyWith<$Res> get monday;
  $OpenDayCopyWith<$Res> get tuesday;
  $OpenDayCopyWith<$Res> get wednesday;
  $OpenDayCopyWith<$Res> get thursday;
  $OpenDayCopyWith<$Res> get friday;
  $OpenDayCopyWith<$Res> get saturday;
  $OpenDayCopyWith<$Res> get sunday;
}

/// @nodoc
class _$OpenDaysCopyWithImpl<$Res> implements $OpenDaysCopyWith<$Res> {
  _$OpenDaysCopyWithImpl(this._value, this._then);

  final OpenDays _value;
  // ignore: unused_field
  final $Res Function(OpenDays) _then;

  @override
  $Res call({
    Object? monday = freezed,
    Object? tuesday = freezed,
    Object? wednesday = freezed,
    Object? thursday = freezed,
    Object? friday = freezed,
    Object? saturday = freezed,
    Object? sunday = freezed,
  }) {
    return _then(_value.copyWith(
      monday: monday == freezed
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      tuesday: tuesday == freezed
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      wednesday: wednesday == freezed
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      thursday: thursday == freezed
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      friday: friday == freezed
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      saturday: saturday == freezed
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      sunday: sunday == freezed
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
    ));
  }

  @override
  $OpenDayCopyWith<$Res> get monday {
    return $OpenDayCopyWith<$Res>(_value.monday, (value) {
      return _then(_value.copyWith(monday: value));
    });
  }

  @override
  $OpenDayCopyWith<$Res> get tuesday {
    return $OpenDayCopyWith<$Res>(_value.tuesday, (value) {
      return _then(_value.copyWith(tuesday: value));
    });
  }

  @override
  $OpenDayCopyWith<$Res> get wednesday {
    return $OpenDayCopyWith<$Res>(_value.wednesday, (value) {
      return _then(_value.copyWith(wednesday: value));
    });
  }

  @override
  $OpenDayCopyWith<$Res> get thursday {
    return $OpenDayCopyWith<$Res>(_value.thursday, (value) {
      return _then(_value.copyWith(thursday: value));
    });
  }

  @override
  $OpenDayCopyWith<$Res> get friday {
    return $OpenDayCopyWith<$Res>(_value.friday, (value) {
      return _then(_value.copyWith(friday: value));
    });
  }

  @override
  $OpenDayCopyWith<$Res> get saturday {
    return $OpenDayCopyWith<$Res>(_value.saturday, (value) {
      return _then(_value.copyWith(saturday: value));
    });
  }

  @override
  $OpenDayCopyWith<$Res> get sunday {
    return $OpenDayCopyWith<$Res>(_value.sunday, (value) {
      return _then(_value.copyWith(sunday: value));
    });
  }
}

/// @nodoc
abstract class _$OpenDaysCopyWith<$Res> implements $OpenDaysCopyWith<$Res> {
  factory _$OpenDaysCopyWith(_OpenDays value, $Res Function(_OpenDays) then) =
      __$OpenDaysCopyWithImpl<$Res>;
  @override
  $Res call(
      {OpenDay monday,
      OpenDay tuesday,
      OpenDay wednesday,
      OpenDay thursday,
      OpenDay friday,
      OpenDay saturday,
      OpenDay sunday});

  @override
  $OpenDayCopyWith<$Res> get monday;
  @override
  $OpenDayCopyWith<$Res> get tuesday;
  @override
  $OpenDayCopyWith<$Res> get wednesday;
  @override
  $OpenDayCopyWith<$Res> get thursday;
  @override
  $OpenDayCopyWith<$Res> get friday;
  @override
  $OpenDayCopyWith<$Res> get saturday;
  @override
  $OpenDayCopyWith<$Res> get sunday;
}

/// @nodoc
class __$OpenDaysCopyWithImpl<$Res> extends _$OpenDaysCopyWithImpl<$Res>
    implements _$OpenDaysCopyWith<$Res> {
  __$OpenDaysCopyWithImpl(_OpenDays _value, $Res Function(_OpenDays) _then)
      : super(_value, (v) => _then(v as _OpenDays));

  @override
  _OpenDays get _value => super._value as _OpenDays;

  @override
  $Res call({
    Object? monday = freezed,
    Object? tuesday = freezed,
    Object? wednesday = freezed,
    Object? thursday = freezed,
    Object? friday = freezed,
    Object? saturday = freezed,
    Object? sunday = freezed,
  }) {
    return _then(_OpenDays(
      monday: monday == freezed
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      tuesday: tuesday == freezed
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      wednesday: wednesday == freezed
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      thursday: thursday == freezed
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      friday: friday == freezed
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      saturday: saturday == freezed
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
      sunday: sunday == freezed
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as OpenDay,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenDays implements _OpenDays {
  const _$_OpenDays(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday,
      required this.saturday,
      required this.sunday});

  factory _$_OpenDays.fromJson(Map<String, dynamic> json) =>
      _$$_OpenDaysFromJson(json);

  @override
  final OpenDay monday;
  @override
  final OpenDay tuesday;
  @override
  final OpenDay wednesday;
  @override
  final OpenDay thursday;
  @override
  final OpenDay friday;
  @override
  final OpenDay saturday;
  @override
  final OpenDay sunday;

  @override
  String toString() {
    return 'OpenDays(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenDays &&
            const DeepCollectionEquality().equals(other.monday, monday) &&
            const DeepCollectionEquality().equals(other.tuesday, tuesday) &&
            const DeepCollectionEquality().equals(other.wednesday, wednesday) &&
            const DeepCollectionEquality().equals(other.thursday, thursday) &&
            const DeepCollectionEquality().equals(other.friday, friday) &&
            const DeepCollectionEquality().equals(other.saturday, saturday) &&
            const DeepCollectionEquality().equals(other.sunday, sunday));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(monday),
      const DeepCollectionEquality().hash(tuesday),
      const DeepCollectionEquality().hash(wednesday),
      const DeepCollectionEquality().hash(thursday),
      const DeepCollectionEquality().hash(friday),
      const DeepCollectionEquality().hash(saturday),
      const DeepCollectionEquality().hash(sunday));

  @JsonKey(ignore: true)
  @override
  _$OpenDaysCopyWith<_OpenDays> get copyWith =>
      __$OpenDaysCopyWithImpl<_OpenDays>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenDaysToJson(this);
  }
}

abstract class _OpenDays implements OpenDays {
  const factory _OpenDays(
      {required OpenDay monday,
      required OpenDay tuesday,
      required OpenDay wednesday,
      required OpenDay thursday,
      required OpenDay friday,
      required OpenDay saturday,
      required OpenDay sunday}) = _$_OpenDays;

  factory _OpenDays.fromJson(Map<String, dynamic> json) = _$_OpenDays.fromJson;

  @override
  OpenDay get monday;
  @override
  OpenDay get tuesday;
  @override
  OpenDay get wednesday;
  @override
  OpenDay get thursday;
  @override
  OpenDay get friday;
  @override
  OpenDay get saturday;
  @override
  OpenDay get sunday;
  @override
  @JsonKey(ignore: true)
  _$OpenDaysCopyWith<_OpenDays> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenDay _$OpenDayFromJson(Map<String, dynamic> json) {
  return _OpenDay.fromJson(json);
}

/// @nodoc
class _$OpenDayTearOff {
  const _$OpenDayTearOff();

  _OpenDay call({required OpenHour start, required OpenHour end}) {
    return _OpenDay(
      start: start,
      end: end,
    );
  }

  OpenDay fromJson(Map<String, Object?> json) {
    return OpenDay.fromJson(json);
  }
}

/// @nodoc
const $OpenDay = _$OpenDayTearOff();

/// @nodoc
mixin _$OpenDay {
  OpenHour get start => throw _privateConstructorUsedError;
  OpenHour get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenDayCopyWith<OpenDay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenDayCopyWith<$Res> {
  factory $OpenDayCopyWith(OpenDay value, $Res Function(OpenDay) then) =
      _$OpenDayCopyWithImpl<$Res>;
  $Res call({OpenHour start, OpenHour end});

  $OpenHourCopyWith<$Res> get start;
  $OpenHourCopyWith<$Res> get end;
}

/// @nodoc
class _$OpenDayCopyWithImpl<$Res> implements $OpenDayCopyWith<$Res> {
  _$OpenDayCopyWithImpl(this._value, this._then);

  final OpenDay _value;
  // ignore: unused_field
  final $Res Function(OpenDay) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as OpenHour,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as OpenHour,
    ));
  }

  @override
  $OpenHourCopyWith<$Res> get start {
    return $OpenHourCopyWith<$Res>(_value.start, (value) {
      return _then(_value.copyWith(start: value));
    });
  }

  @override
  $OpenHourCopyWith<$Res> get end {
    return $OpenHourCopyWith<$Res>(_value.end, (value) {
      return _then(_value.copyWith(end: value));
    });
  }
}

/// @nodoc
abstract class _$OpenDayCopyWith<$Res> implements $OpenDayCopyWith<$Res> {
  factory _$OpenDayCopyWith(_OpenDay value, $Res Function(_OpenDay) then) =
      __$OpenDayCopyWithImpl<$Res>;
  @override
  $Res call({OpenHour start, OpenHour end});

  @override
  $OpenHourCopyWith<$Res> get start;
  @override
  $OpenHourCopyWith<$Res> get end;
}

/// @nodoc
class __$OpenDayCopyWithImpl<$Res> extends _$OpenDayCopyWithImpl<$Res>
    implements _$OpenDayCopyWith<$Res> {
  __$OpenDayCopyWithImpl(_OpenDay _value, $Res Function(_OpenDay) _then)
      : super(_value, (v) => _then(v as _OpenDay));

  @override
  _OpenDay get _value => super._value as _OpenDay;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_OpenDay(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as OpenHour,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as OpenHour,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenDay implements _OpenDay {
  const _$_OpenDay({required this.start, required this.end});

  factory _$_OpenDay.fromJson(Map<String, dynamic> json) =>
      _$$_OpenDayFromJson(json);

  @override
  final OpenHour start;
  @override
  final OpenHour end;

  @override
  String toString() {
    return 'OpenDay(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenDay &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  _$OpenDayCopyWith<_OpenDay> get copyWith =>
      __$OpenDayCopyWithImpl<_OpenDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenDayToJson(this);
  }
}

abstract class _OpenDay implements OpenDay {
  const factory _OpenDay({required OpenHour start, required OpenHour end}) =
      _$_OpenDay;

  factory _OpenDay.fromJson(Map<String, dynamic> json) = _$_OpenDay.fromJson;

  @override
  OpenHour get start;
  @override
  OpenHour get end;
  @override
  @JsonKey(ignore: true)
  _$OpenDayCopyWith<_OpenDay> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenHour _$OpenHourFromJson(Map<String, dynamic> json) {
  return _OpenHour.fromJson(json);
}

/// @nodoc
class _$OpenHourTearOff {
  const _$OpenHourTearOff();

  _OpenHour call({required int hour, required int minute}) {
    return _OpenHour(
      hour: hour,
      minute: minute,
    );
  }

  OpenHour fromJson(Map<String, Object?> json) {
    return OpenHour.fromJson(json);
  }
}

/// @nodoc
const $OpenHour = _$OpenHourTearOff();

/// @nodoc
mixin _$OpenHour {
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenHourCopyWith<OpenHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenHourCopyWith<$Res> {
  factory $OpenHourCopyWith(OpenHour value, $Res Function(OpenHour) then) =
      _$OpenHourCopyWithImpl<$Res>;
  $Res call({int hour, int minute});
}

/// @nodoc
class _$OpenHourCopyWithImpl<$Res> implements $OpenHourCopyWith<$Res> {
  _$OpenHourCopyWithImpl(this._value, this._then);

  final OpenHour _value;
  // ignore: unused_field
  final $Res Function(OpenHour) _then;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minute = freezed,
  }) {
    return _then(_value.copyWith(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: minute == freezed
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OpenHourCopyWith<$Res> implements $OpenHourCopyWith<$Res> {
  factory _$OpenHourCopyWith(_OpenHour value, $Res Function(_OpenHour) then) =
      __$OpenHourCopyWithImpl<$Res>;
  @override
  $Res call({int hour, int minute});
}

/// @nodoc
class __$OpenHourCopyWithImpl<$Res> extends _$OpenHourCopyWithImpl<$Res>
    implements _$OpenHourCopyWith<$Res> {
  __$OpenHourCopyWithImpl(_OpenHour _value, $Res Function(_OpenHour) _then)
      : super(_value, (v) => _then(v as _OpenHour));

  @override
  _OpenHour get _value => super._value as _OpenHour;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minute = freezed,
  }) {
    return _then(_OpenHour(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: minute == freezed
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenHour implements _OpenHour {
  const _$_OpenHour({required this.hour, required this.minute});

  factory _$_OpenHour.fromJson(Map<String, dynamic> json) =>
      _$$_OpenHourFromJson(json);

  @override
  final int hour;
  @override
  final int minute;

  @override
  String toString() {
    return 'OpenHour(hour: $hour, minute: $minute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenHour &&
            const DeepCollectionEquality().equals(other.hour, hour) &&
            const DeepCollectionEquality().equals(other.minute, minute));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hour),
      const DeepCollectionEquality().hash(minute));

  @JsonKey(ignore: true)
  @override
  _$OpenHourCopyWith<_OpenHour> get copyWith =>
      __$OpenHourCopyWithImpl<_OpenHour>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenHourToJson(this);
  }
}

abstract class _OpenHour implements OpenHour {
  const factory _OpenHour({required int hour, required int minute}) =
      _$_OpenHour;

  factory _OpenHour.fromJson(Map<String, dynamic> json) = _$_OpenHour.fromJson;

  @override
  int get hour;
  @override
  int get minute;
  @override
  @JsonKey(ignore: true)
  _$OpenHourCopyWith<_OpenHour> get copyWith =>
      throw _privateConstructorUsedError;
}
