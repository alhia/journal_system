// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'patients_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PatientsStateTearOff {
  const _$PatientsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loaded loaded(List<Booking> bookings,
      {List<SearchModel> searchResult = const [],
      List<String> selectedBookings = const [],
      PatientsFilters filters = const PatientsFilters()}) {
    return _Loaded(
      bookings,
      searchResult: searchResult,
      selectedBookings: selectedBookings,
      filters: filters,
    );
  }
}

/// @nodoc
const $PatientsState = _$PatientsStateTearOff();

/// @nodoc
mixin _$PatientsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Booking> bookings,
            List<SearchModel> searchResult,
            List<String> selectedBookings,
            PatientsFilters filters)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings, List<SearchModel> searchResult,
            List<String> selectedBookings, PatientsFilters filters)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings, List<SearchModel> searchResult,
            List<String> selectedBookings, PatientsFilters filters)?
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
abstract class $PatientsStateCopyWith<$Res> {
  factory $PatientsStateCopyWith(
          PatientsState value, $Res Function(PatientsState) then) =
      _$PatientsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PatientsStateCopyWithImpl<$Res>
    implements $PatientsStateCopyWith<$Res> {
  _$PatientsStateCopyWithImpl(this._value, this._then);

  final PatientsState _value;
  // ignore: unused_field
  final $Res Function(PatientsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PatientsStateCopyWithImpl<$Res>
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
    return 'PatientsState.initial()';
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
            List<SearchModel> searchResult,
            List<String> selectedBookings,
            PatientsFilters filters)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings, List<SearchModel> searchResult,
            List<String> selectedBookings, PatientsFilters filters)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings, List<SearchModel> searchResult,
            List<String> selectedBookings, PatientsFilters filters)?
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

abstract class _Initial implements PatientsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Booking> bookings,
      List<SearchModel> searchResult,
      List<String> selectedBookings,
      PatientsFilters filters});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$PatientsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? bookings = freezed,
    Object? searchResult = freezed,
    Object? selectedBookings = freezed,
    Object? filters = freezed,
  }) {
    return _then(_Loaded(
      bookings == freezed
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<SearchModel>,
      selectedBookings: selectedBookings == freezed
          ? _value.selectedBookings
          : selectedBookings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as PatientsFilters,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.bookings,
      {this.searchResult = const [],
      this.selectedBookings = const [],
      this.filters = const PatientsFilters()});

  @override
  final List<Booking> bookings;
  @JsonKey()
  @override
  final List<SearchModel> searchResult;
  @JsonKey()
  @override
  final List<String> selectedBookings;
  @JsonKey()
  @override
  final PatientsFilters filters;

  @override
  String toString() {
    return 'PatientsState.loaded(bookings: $bookings, searchResult: $searchResult, selectedBookings: $selectedBookings, filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.bookings, bookings) &&
            const DeepCollectionEquality()
                .equals(other.searchResult, searchResult) &&
            const DeepCollectionEquality()
                .equals(other.selectedBookings, selectedBookings) &&
            const DeepCollectionEquality().equals(other.filters, filters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bookings),
      const DeepCollectionEquality().hash(searchResult),
      const DeepCollectionEquality().hash(selectedBookings),
      const DeepCollectionEquality().hash(filters));

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
            List<SearchModel> searchResult,
            List<String> selectedBookings,
            PatientsFilters filters)
        loaded,
  }) {
    return loaded(bookings, searchResult, selectedBookings, filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings, List<SearchModel> searchResult,
            List<String> selectedBookings, PatientsFilters filters)?
        loaded,
  }) {
    return loaded?.call(bookings, searchResult, selectedBookings, filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings, List<SearchModel> searchResult,
            List<String> selectedBookings, PatientsFilters filters)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bookings, searchResult, selectedBookings, filters);
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

abstract class _Loaded implements PatientsState {
  const factory _Loaded(List<Booking> bookings,
      {List<SearchModel> searchResult,
      List<String> selectedBookings,
      PatientsFilters filters}) = _$_Loaded;

  List<Booking> get bookings;
  List<SearchModel> get searchResult;
  List<String> get selectedBookings;
  PatientsFilters get filters;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
