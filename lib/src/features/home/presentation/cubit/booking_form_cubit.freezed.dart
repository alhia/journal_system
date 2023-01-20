// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookingFormStateTearOff {
  const _$BookingFormStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loaded loaded(
      {required Clinic clinic,
      required ClinicSettings clinicSettings,
      required DateTime selectedDay,
      required DateTime focusedDay,
      required int step,
      required List<DateTime> availableDates,
      Service? selectedService,
      DateTime? selectedTime}) {
    return _Loaded(
      clinic: clinic,
      clinicSettings: clinicSettings,
      selectedDay: selectedDay,
      focusedDay: focusedDay,
      step: step,
      availableDates: availableDates,
      selectedService: selectedService,
      selectedTime: selectedTime,
    );
  }
}

/// @nodoc
const $BookingFormState = _$BookingFormStateTearOff();

/// @nodoc
mixin _$BookingFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Clinic clinic,
            ClinicSettings clinicSettings,
            DateTime selectedDay,
            DateTime focusedDay,
            int step,
            List<DateTime> availableDates,
            Service? selectedService,
            DateTime? selectedTime)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Clinic clinic,
            ClinicSettings clinicSettings,
            DateTime selectedDay,
            DateTime focusedDay,
            int step,
            List<DateTime> availableDates,
            Service? selectedService,
            DateTime? selectedTime)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Clinic clinic,
            ClinicSettings clinicSettings,
            DateTime selectedDay,
            DateTime focusedDay,
            int step,
            List<DateTime> availableDates,
            Service? selectedService,
            DateTime? selectedTime)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingFormStateCopyWith<$Res> {
  factory $BookingFormStateCopyWith(
          BookingFormState value, $Res Function(BookingFormState) then) =
      _$BookingFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookingFormStateCopyWithImpl<$Res>
    implements $BookingFormStateCopyWith<$Res> {
  _$BookingFormStateCopyWithImpl(this._value, this._then);

  final BookingFormState _value;
  // ignore: unused_field
  final $Res Function(BookingFormState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BookingFormStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BookingFormState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Clinic clinic,
            ClinicSettings clinicSettings,
            DateTime selectedDay,
            DateTime focusedDay,
            int step,
            List<DateTime> availableDates,
            Service? selectedService,
            DateTime? selectedTime)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Clinic clinic,
            ClinicSettings clinicSettings,
            DateTime selectedDay,
            DateTime focusedDay,
            int step,
            List<DateTime> availableDates,
            Service? selectedService,
            DateTime? selectedTime)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Clinic clinic,
            ClinicSettings clinicSettings,
            DateTime selectedDay,
            DateTime focusedDay,
            int step,
            List<DateTime> availableDates,
            Service? selectedService,
            DateTime? selectedTime)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookingFormState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {Clinic clinic,
      ClinicSettings clinicSettings,
      DateTime selectedDay,
      DateTime focusedDay,
      int step,
      List<DateTime> availableDates,
      Service? selectedService,
      DateTime? selectedTime});

  $ClinicCopyWith<$Res> get clinic;
  $ClinicSettingsCopyWith<$Res> get clinicSettings;
  $ServiceCopyWith<$Res>? get selectedService;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$BookingFormStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? clinic = freezed,
    Object? clinicSettings = freezed,
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
    Object? step = freezed,
    Object? availableDates = freezed,
    Object? selectedService = freezed,
    Object? selectedTime = freezed,
  }) {
    return _then(_Loaded(
      clinic: clinic == freezed
          ? _value.clinic
          : clinic // ignore: cast_nullable_to_non_nullable
              as Clinic,
      clinicSettings: clinicSettings == freezed
          ? _value.clinicSettings
          : clinicSettings // ignore: cast_nullable_to_non_nullable
              as ClinicSettings,
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      availableDates: availableDates == freezed
          ? _value.availableDates
          : availableDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      selectedService: selectedService == freezed
          ? _value.selectedService
          : selectedService // ignore: cast_nullable_to_non_nullable
              as Service?,
      selectedTime: selectedTime == freezed
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $ClinicCopyWith<$Res> get clinic {
    return $ClinicCopyWith<$Res>(_value.clinic, (value) {
      return _then(_value.copyWith(clinic: value));
    });
  }

  @override
  $ClinicSettingsCopyWith<$Res> get clinicSettings {
    return $ClinicSettingsCopyWith<$Res>(_value.clinicSettings, (value) {
      return _then(_value.copyWith(clinicSettings: value));
    });
  }

  @override
  $ServiceCopyWith<$Res>? get selectedService {
    if (_value.selectedService == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.selectedService!, (value) {
      return _then(_value.copyWith(selectedService: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.clinic,
      required this.clinicSettings,
      required this.selectedDay,
      required this.focusedDay,
      required this.step,
      required this.availableDates,
      this.selectedService,
      this.selectedTime});

  @override
  final Clinic clinic;
  @override
  final ClinicSettings clinicSettings;
  @override
  final DateTime selectedDay;
  @override
  final DateTime focusedDay;
  @override
  final int step;
  @override
  final List<DateTime> availableDates;
  @override
  final Service? selectedService;
  @override
  final DateTime? selectedTime;

  @override
  String toString() {
    return 'BookingFormState.loaded(clinic: $clinic, clinicSettings: $clinicSettings, selectedDay: $selectedDay, focusedDay: $focusedDay, step: $step, availableDates: $availableDates, selectedService: $selectedService, selectedTime: $selectedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.clinic, clinic) &&
            const DeepCollectionEquality()
                .equals(other.clinicSettings, clinicSettings) &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay) &&
            const DeepCollectionEquality().equals(other.step, step) &&
            const DeepCollectionEquality()
                .equals(other.availableDates, availableDates) &&
            const DeepCollectionEquality()
                .equals(other.selectedService, selectedService) &&
            const DeepCollectionEquality()
                .equals(other.selectedTime, selectedTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clinic),
      const DeepCollectionEquality().hash(clinicSettings),
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(focusedDay),
      const DeepCollectionEquality().hash(step),
      const DeepCollectionEquality().hash(availableDates),
      const DeepCollectionEquality().hash(selectedService),
      const DeepCollectionEquality().hash(selectedTime));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Clinic clinic,
            ClinicSettings clinicSettings,
            DateTime selectedDay,
            DateTime focusedDay,
            int step,
            List<DateTime> availableDates,
            Service? selectedService,
            DateTime? selectedTime)
        loaded,
  }) {
    return loaded(clinic, clinicSettings, selectedDay, focusedDay, step,
        availableDates, selectedService, selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Clinic clinic,
            ClinicSettings clinicSettings,
            DateTime selectedDay,
            DateTime focusedDay,
            int step,
            List<DateTime> availableDates,
            Service? selectedService,
            DateTime? selectedTime)?
        loaded,
  }) {
    return loaded?.call(clinic, clinicSettings, selectedDay, focusedDay, step,
        availableDates, selectedService, selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Clinic clinic,
            ClinicSettings clinicSettings,
            DateTime selectedDay,
            DateTime focusedDay,
            int step,
            List<DateTime> availableDates,
            Service? selectedService,
            DateTime? selectedTime)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(clinic, clinicSettings, selectedDay, focusedDay, step,
          availableDates, selectedService, selectedTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements BookingFormState {
  const factory _Loaded(
      {required Clinic clinic,
      required ClinicSettings clinicSettings,
      required DateTime selectedDay,
      required DateTime focusedDay,
      required int step,
      required List<DateTime> availableDates,
      Service? selectedService,
      DateTime? selectedTime}) = _$_Loaded;

  Clinic get clinic;
  ClinicSettings get clinicSettings;
  DateTime get selectedDay;
  DateTime get focusedDay;
  int get step;
  List<DateTime> get availableDates;
  Service? get selectedService;
  DateTime? get selectedTime;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
