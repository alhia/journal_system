// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loaded loaded({List<SearchModel> searchResult = const []}) {
    return _Loaded(
      searchResult: searchResult,
    );
  }

  _ShowPatient showPatient({required String selectedRid}) {
    return _ShowPatient(
      selectedRid: selectedRid,
    );
  }
}

/// @nodoc
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchModel> searchResult) loaded,
    required TResult Function(String selectedRid) showPatient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchModel> searchResult)? loaded,
    TResult Function(String selectedRid)? showPatient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchModel> searchResult)? loaded,
    TResult Function(String selectedRid)? showPatient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ShowPatient value) showPatient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowPatient value)? showPatient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowPatient value)? showPatient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DashboardStateCopyWithImpl<$Res>
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
    return 'DashboardState.initial()';
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
    required TResult Function(List<SearchModel> searchResult) loaded,
    required TResult Function(String selectedRid) showPatient,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchModel> searchResult)? loaded,
    TResult Function(String selectedRid)? showPatient,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchModel> searchResult)? loaded,
    TResult Function(String selectedRid)? showPatient,
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
    required TResult Function(_ShowPatient value) showPatient,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowPatient value)? showPatient,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowPatient value)? showPatient,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DashboardState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<SearchModel> searchResult});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$DashboardStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? searchResult = freezed,
  }) {
    return _then(_Loaded(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<SearchModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({this.searchResult = const []});

  @JsonKey()
  @override
  final List<SearchModel> searchResult;

  @override
  String toString() {
    return 'DashboardState.loaded(searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality()
                .equals(other.searchResult, searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchResult));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchModel> searchResult) loaded,
    required TResult Function(String selectedRid) showPatient,
  }) {
    return loaded(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchModel> searchResult)? loaded,
    TResult Function(String selectedRid)? showPatient,
  }) {
    return loaded?.call(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchModel> searchResult)? loaded,
    TResult Function(String selectedRid)? showPatient,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(searchResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ShowPatient value) showPatient,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowPatient value)? showPatient,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowPatient value)? showPatient,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DashboardState {
  const factory _Loaded({List<SearchModel> searchResult}) = _$_Loaded;

  List<SearchModel> get searchResult;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowPatientCopyWith<$Res> {
  factory _$ShowPatientCopyWith(
          _ShowPatient value, $Res Function(_ShowPatient) then) =
      __$ShowPatientCopyWithImpl<$Res>;
  $Res call({String selectedRid});
}

/// @nodoc
class __$ShowPatientCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$ShowPatientCopyWith<$Res> {
  __$ShowPatientCopyWithImpl(
      _ShowPatient _value, $Res Function(_ShowPatient) _then)
      : super(_value, (v) => _then(v as _ShowPatient));

  @override
  _ShowPatient get _value => super._value as _ShowPatient;

  @override
  $Res call({
    Object? selectedRid = freezed,
  }) {
    return _then(_ShowPatient(
      selectedRid: selectedRid == freezed
          ? _value.selectedRid
          : selectedRid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowPatient implements _ShowPatient {
  const _$_ShowPatient({required this.selectedRid});

  @override
  final String selectedRid;

  @override
  String toString() {
    return 'DashboardState.showPatient(selectedRid: $selectedRid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowPatient &&
            const DeepCollectionEquality()
                .equals(other.selectedRid, selectedRid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedRid));

  @JsonKey(ignore: true)
  @override
  _$ShowPatientCopyWith<_ShowPatient> get copyWith =>
      __$ShowPatientCopyWithImpl<_ShowPatient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchModel> searchResult) loaded,
    required TResult Function(String selectedRid) showPatient,
  }) {
    return showPatient(selectedRid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchModel> searchResult)? loaded,
    TResult Function(String selectedRid)? showPatient,
  }) {
    return showPatient?.call(selectedRid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchModel> searchResult)? loaded,
    TResult Function(String selectedRid)? showPatient,
    required TResult orElse(),
  }) {
    if (showPatient != null) {
      return showPatient(selectedRid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ShowPatient value) showPatient,
  }) {
    return showPatient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowPatient value)? showPatient,
  }) {
    return showPatient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ShowPatient value)? showPatient,
    required TResult orElse(),
  }) {
    if (showPatient != null) {
      return showPatient(this);
    }
    return orElse();
  }
}

abstract class _ShowPatient implements DashboardState {
  const factory _ShowPatient({required String selectedRid}) = _$_ShowPatient;

  String get selectedRid;
  @JsonKey(ignore: true)
  _$ShowPatientCopyWith<_ShowPatient> get copyWith =>
      throw _privateConstructorUsedError;
}
