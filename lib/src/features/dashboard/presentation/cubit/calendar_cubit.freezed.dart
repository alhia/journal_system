// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalendarStateTearOff {
  const _$CalendarStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loaded loaded(List<Booking> bookings,
      {required VisibleDays visibleDays,
      required DateTime selectedDay,
      required DateTime focusedDay,
      List<Booking> selectedEvents = const []}) {
    return _Loaded(
      bookings,
      visibleDays: visibleDays,
      selectedDay: selectedDay,
      focusedDay: focusedDay,
      selectedEvents: selectedEvents,
    );
  }
}

/// @nodoc
const $CalendarState = _$CalendarStateTearOff();

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Booking> bookings,
            VisibleDays visibleDays,
            DateTime selectedDay,
            DateTime focusedDay,
            List<Booking> selectedEvents)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Booking> bookings,
            VisibleDays visibleDays,
            DateTime selectedDay,
            DateTime focusedDay,
            List<Booking> selectedEvents)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Booking> bookings,
            VisibleDays visibleDays,
            DateTime selectedDay,
            DateTime focusedDay,
            List<Booking> selectedEvents)?
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
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  final CalendarState _value;
  // ignore: unused_field
  final $Res Function(CalendarState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
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
    return 'CalendarState.initial()';
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
            List<Booking> bookings,
            VisibleDays visibleDays,
            DateTime selectedDay,
            DateTime focusedDay,
            List<Booking> selectedEvents)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Booking> bookings,
            VisibleDays visibleDays,
            DateTime selectedDay,
            DateTime focusedDay,
            List<Booking> selectedEvents)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Booking> bookings,
            VisibleDays visibleDays,
            DateTime selectedDay,
            DateTime focusedDay,
            List<Booking> selectedEvents)?
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

abstract class _Initial implements CalendarState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Booking> bookings,
      VisibleDays visibleDays,
      DateTime selectedDay,
      DateTime focusedDay,
      List<Booking> selectedEvents});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? bookings = freezed,
    Object? visibleDays = freezed,
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
    Object? selectedEvents = freezed,
  }) {
    return _then(_Loaded(
      bookings == freezed
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
      visibleDays: visibleDays == freezed
          ? _value.visibleDays
          : visibleDays // ignore: cast_nullable_to_non_nullable
              as VisibleDays,
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedEvents: selectedEvents == freezed
          ? _value.selectedEvents
          : selectedEvents // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.bookings,
      {required this.visibleDays,
      required this.selectedDay,
      required this.focusedDay,
      this.selectedEvents = const []});

  @override
  final List<Booking> bookings;
  @override
  final VisibleDays visibleDays;
  @override
  final DateTime selectedDay;
  @override
  final DateTime focusedDay;
  @JsonKey()
  @override
  final List<Booking> selectedEvents;

  @override
  String toString() {
    return 'CalendarState.loaded(bookings: $bookings, visibleDays: $visibleDays, selectedDay: $selectedDay, focusedDay: $focusedDay, selectedEvents: $selectedEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.bookings, bookings) &&
            const DeepCollectionEquality()
                .equals(other.visibleDays, visibleDays) &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay) &&
            const DeepCollectionEquality()
                .equals(other.selectedEvents, selectedEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bookings),
      const DeepCollectionEquality().hash(visibleDays),
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(focusedDay),
      const DeepCollectionEquality().hash(selectedEvents));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Booking> bookings,
            VisibleDays visibleDays,
            DateTime selectedDay,
            DateTime focusedDay,
            List<Booking> selectedEvents)
        loaded,
  }) {
    return loaded(
        bookings, visibleDays, selectedDay, focusedDay, selectedEvents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Booking> bookings,
            VisibleDays visibleDays,
            DateTime selectedDay,
            DateTime focusedDay,
            List<Booking> selectedEvents)?
        loaded,
  }) {
    return loaded?.call(
        bookings, visibleDays, selectedDay, focusedDay, selectedEvents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<Booking> bookings,
            VisibleDays visibleDays,
            DateTime selectedDay,
            DateTime focusedDay,
            List<Booking> selectedEvents)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          bookings, visibleDays, selectedDay, focusedDay, selectedEvents);
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

abstract class _Loaded implements CalendarState {
  const factory _Loaded(List<Booking> bookings,
      {required VisibleDays visibleDays,
      required DateTime selectedDay,
      required DateTime focusedDay,
      List<Booking> selectedEvents}) = _$_Loaded;

  List<Booking> get bookings;
  VisibleDays get visibleDays;
  DateTime get selectedDay;
  DateTime get focusedDay;
  List<Booking> get selectedEvents;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
