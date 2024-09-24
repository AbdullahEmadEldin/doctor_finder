// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationsLoading,
    required TResult Function(SpecialtiesResponseModel data)
        specializationsSuccess,
    required TResult Function(String message) specializationsError,
    required TResult Function(List<Doctor?>? doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationsLoading,
    TResult? Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult? Function(String message)? specializationsError,
    TResult? Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationsLoading,
    TResult Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult Function(String message)? specializationsError,
    TResult Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtiesLoading value) specializationsLoading,
    required TResult Function(SpecialtiesSuccess value) specializationsSuccess,
    required TResult Function(SpecialtiesError value) specializationsError,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtiesLoading value)? specializationsLoading,
    TResult? Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult? Function(SpecialtiesError value)? specializationsError,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtiesLoading value)? specializationsLoading,
    TResult Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult Function(SpecialtiesError value)? specializationsError,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationsLoading,
    required TResult Function(SpecialtiesResponseModel data)
        specializationsSuccess,
    required TResult Function(String message) specializationsError,
    required TResult Function(List<Doctor?>? doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationsLoading,
    TResult? Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult? Function(String message)? specializationsError,
    TResult? Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationsLoading,
    TResult Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult Function(String message)? specializationsError,
    TResult Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
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
    required TResult Function(SpecialtiesLoading value) specializationsLoading,
    required TResult Function(SpecialtiesSuccess value) specializationsSuccess,
    required TResult Function(SpecialtiesError value) specializationsError,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtiesLoading value)? specializationsLoading,
    TResult? Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult? Function(SpecialtiesError value)? specializationsError,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtiesLoading value)? specializationsLoading,
    TResult Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult Function(SpecialtiesError value)? specializationsError,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SpecialtiesLoadingImplCopyWith<$Res> {
  factory _$$SpecialtiesLoadingImplCopyWith(_$SpecialtiesLoadingImpl value,
          $Res Function(_$SpecialtiesLoadingImpl) then) =
      __$$SpecialtiesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpecialtiesLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecialtiesLoadingImpl>
    implements _$$SpecialtiesLoadingImplCopyWith<$Res> {
  __$$SpecialtiesLoadingImplCopyWithImpl(_$SpecialtiesLoadingImpl _value,
      $Res Function(_$SpecialtiesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SpecialtiesLoadingImpl implements SpecialtiesLoading {
  const _$SpecialtiesLoadingImpl();

  @override
  String toString() {
    return 'HomeState.specializationsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpecialtiesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationsLoading,
    required TResult Function(SpecialtiesResponseModel data)
        specializationsSuccess,
    required TResult Function(String message) specializationsError,
    required TResult Function(List<Doctor?>? doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return specializationsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationsLoading,
    TResult? Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult? Function(String message)? specializationsError,
    TResult? Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return specializationsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationsLoading,
    TResult Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult Function(String message)? specializationsError,
    TResult Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationsLoading != null) {
      return specializationsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtiesLoading value) specializationsLoading,
    required TResult Function(SpecialtiesSuccess value) specializationsSuccess,
    required TResult Function(SpecialtiesError value) specializationsError,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return specializationsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtiesLoading value)? specializationsLoading,
    TResult? Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult? Function(SpecialtiesError value)? specializationsError,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return specializationsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtiesLoading value)? specializationsLoading,
    TResult Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult Function(SpecialtiesError value)? specializationsError,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationsLoading != null) {
      return specializationsLoading(this);
    }
    return orElse();
  }
}

abstract class SpecialtiesLoading implements HomeState {
  const factory SpecialtiesLoading() = _$SpecialtiesLoadingImpl;
}

/// @nodoc
abstract class _$$SpecialtiesSuccessImplCopyWith<$Res> {
  factory _$$SpecialtiesSuccessImplCopyWith(_$SpecialtiesSuccessImpl value,
          $Res Function(_$SpecialtiesSuccessImpl) then) =
      __$$SpecialtiesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpecialtiesResponseModel data});
}

/// @nodoc
class __$$SpecialtiesSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecialtiesSuccessImpl>
    implements _$$SpecialtiesSuccessImplCopyWith<$Res> {
  __$$SpecialtiesSuccessImplCopyWithImpl(_$SpecialtiesSuccessImpl _value,
      $Res Function(_$SpecialtiesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SpecialtiesSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SpecialtiesResponseModel,
    ));
  }
}

/// @nodoc

class _$SpecialtiesSuccessImpl implements SpecialtiesSuccess {
  const _$SpecialtiesSuccessImpl(this.data);

  @override
  final SpecialtiesResponseModel data;

  @override
  String toString() {
    return 'HomeState.specializationsSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialtiesSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialtiesSuccessImplCopyWith<_$SpecialtiesSuccessImpl> get copyWith =>
      __$$SpecialtiesSuccessImplCopyWithImpl<_$SpecialtiesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationsLoading,
    required TResult Function(SpecialtiesResponseModel data)
        specializationsSuccess,
    required TResult Function(String message) specializationsError,
    required TResult Function(List<Doctor?>? doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return specializationsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationsLoading,
    TResult? Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult? Function(String message)? specializationsError,
    TResult? Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return specializationsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationsLoading,
    TResult Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult Function(String message)? specializationsError,
    TResult Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationsSuccess != null) {
      return specializationsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtiesLoading value) specializationsLoading,
    required TResult Function(SpecialtiesSuccess value) specializationsSuccess,
    required TResult Function(SpecialtiesError value) specializationsError,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return specializationsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtiesLoading value)? specializationsLoading,
    TResult? Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult? Function(SpecialtiesError value)? specializationsError,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return specializationsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtiesLoading value)? specializationsLoading,
    TResult Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult Function(SpecialtiesError value)? specializationsError,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationsSuccess != null) {
      return specializationsSuccess(this);
    }
    return orElse();
  }
}

abstract class SpecialtiesSuccess implements HomeState {
  const factory SpecialtiesSuccess(final SpecialtiesResponseModel data) =
      _$SpecialtiesSuccessImpl;

  SpecialtiesResponseModel get data;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialtiesSuccessImplCopyWith<_$SpecialtiesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecialtiesErrorImplCopyWith<$Res> {
  factory _$$SpecialtiesErrorImplCopyWith(_$SpecialtiesErrorImpl value,
          $Res Function(_$SpecialtiesErrorImpl) then) =
      __$$SpecialtiesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SpecialtiesErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecialtiesErrorImpl>
    implements _$$SpecialtiesErrorImplCopyWith<$Res> {
  __$$SpecialtiesErrorImplCopyWithImpl(_$SpecialtiesErrorImpl _value,
      $Res Function(_$SpecialtiesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SpecialtiesErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpecialtiesErrorImpl implements SpecialtiesError {
  const _$SpecialtiesErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.specializationsError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialtiesErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialtiesErrorImplCopyWith<_$SpecialtiesErrorImpl> get copyWith =>
      __$$SpecialtiesErrorImplCopyWithImpl<_$SpecialtiesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationsLoading,
    required TResult Function(SpecialtiesResponseModel data)
        specializationsSuccess,
    required TResult Function(String message) specializationsError,
    required TResult Function(List<Doctor?>? doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return specializationsError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationsLoading,
    TResult? Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult? Function(String message)? specializationsError,
    TResult? Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return specializationsError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationsLoading,
    TResult Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult Function(String message)? specializationsError,
    TResult Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationsError != null) {
      return specializationsError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtiesLoading value) specializationsLoading,
    required TResult Function(SpecialtiesSuccess value) specializationsSuccess,
    required TResult Function(SpecialtiesError value) specializationsError,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return specializationsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtiesLoading value)? specializationsLoading,
    TResult? Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult? Function(SpecialtiesError value)? specializationsError,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return specializationsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtiesLoading value)? specializationsLoading,
    TResult Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult Function(SpecialtiesError value)? specializationsError,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationsError != null) {
      return specializationsError(this);
    }
    return orElse();
  }
}

abstract class SpecialtiesError implements HomeState {
  const factory SpecialtiesError({required final String message}) =
      _$SpecialtiesErrorImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialtiesErrorImplCopyWith<_$SpecialtiesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorsSuccessImplCopyWith<$Res> {
  factory _$$DoctorsSuccessImplCopyWith(_$DoctorsSuccessImpl value,
          $Res Function(_$DoctorsSuccessImpl) then) =
      __$$DoctorsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Doctor?>? doctorsList});
}

/// @nodoc
class __$$DoctorsSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$DoctorsSuccessImpl>
    implements _$$DoctorsSuccessImplCopyWith<$Res> {
  __$$DoctorsSuccessImplCopyWithImpl(
      _$DoctorsSuccessImpl _value, $Res Function(_$DoctorsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorsList = freezed,
  }) {
    return _then(_$DoctorsSuccessImpl(
      freezed == doctorsList
          ? _value._doctorsList
          : doctorsList // ignore: cast_nullable_to_non_nullable
              as List<Doctor?>?,
    ));
  }
}

/// @nodoc

class _$DoctorsSuccessImpl implements DoctorsSuccess {
  const _$DoctorsSuccessImpl(final List<Doctor?>? doctorsList)
      : _doctorsList = doctorsList;

  final List<Doctor?>? _doctorsList;
  @override
  List<Doctor?>? get doctorsList {
    final value = _doctorsList;
    if (value == null) return null;
    if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState.doctorsSuccess(doctorsList: $doctorsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._doctorsList, _doctorsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_doctorsList));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsSuccessImplCopyWith<_$DoctorsSuccessImpl> get copyWith =>
      __$$DoctorsSuccessImplCopyWithImpl<_$DoctorsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationsLoading,
    required TResult Function(SpecialtiesResponseModel data)
        specializationsSuccess,
    required TResult Function(String message) specializationsError,
    required TResult Function(List<Doctor?>? doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return doctorsSuccess(doctorsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationsLoading,
    TResult? Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult? Function(String message)? specializationsError,
    TResult? Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return doctorsSuccess?.call(doctorsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationsLoading,
    TResult Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult Function(String message)? specializationsError,
    TResult Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsSuccess != null) {
      return doctorsSuccess(doctorsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtiesLoading value) specializationsLoading,
    required TResult Function(SpecialtiesSuccess value) specializationsSuccess,
    required TResult Function(SpecialtiesError value) specializationsError,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return doctorsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtiesLoading value)? specializationsLoading,
    TResult? Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult? Function(SpecialtiesError value)? specializationsError,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return doctorsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtiesLoading value)? specializationsLoading,
    TResult Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult Function(SpecialtiesError value)? specializationsError,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsSuccess != null) {
      return doctorsSuccess(this);
    }
    return orElse();
  }
}

abstract class DoctorsSuccess implements HomeState {
  const factory DoctorsSuccess(final List<Doctor?>? doctorsList) =
      _$DoctorsSuccessImpl;

  List<Doctor?>? get doctorsList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsSuccessImplCopyWith<_$DoctorsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorsErrorImplCopyWith<$Res> {
  factory _$$DoctorsErrorImplCopyWith(
          _$DoctorsErrorImpl value, $Res Function(_$DoctorsErrorImpl) then) =
      __$$DoctorsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$DoctorsErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$DoctorsErrorImpl>
    implements _$$DoctorsErrorImplCopyWith<$Res> {
  __$$DoctorsErrorImplCopyWithImpl(
      _$DoctorsErrorImpl _value, $Res Function(_$DoctorsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$DoctorsErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$DoctorsErrorImpl implements DoctorsError {
  const _$DoctorsErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'HomeState.doctorsError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsErrorImplCopyWith<_$DoctorsErrorImpl> get copyWith =>
      __$$DoctorsErrorImplCopyWithImpl<_$DoctorsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationsLoading,
    required TResult Function(SpecialtiesResponseModel data)
        specializationsSuccess,
    required TResult Function(String message) specializationsError,
    required TResult Function(List<Doctor?>? doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return doctorsError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationsLoading,
    TResult? Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult? Function(String message)? specializationsError,
    TResult? Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return doctorsError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationsLoading,
    TResult Function(SpecialtiesResponseModel data)? specializationsSuccess,
    TResult Function(String message)? specializationsError,
    TResult Function(List<Doctor?>? doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsError != null) {
      return doctorsError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtiesLoading value) specializationsLoading,
    required TResult Function(SpecialtiesSuccess value) specializationsSuccess,
    required TResult Function(SpecialtiesError value) specializationsError,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return doctorsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtiesLoading value)? specializationsLoading,
    TResult? Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult? Function(SpecialtiesError value)? specializationsError,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return doctorsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtiesLoading value)? specializationsLoading,
    TResult Function(SpecialtiesSuccess value)? specializationsSuccess,
    TResult Function(SpecialtiesError value)? specializationsError,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsError != null) {
      return doctorsError(this);
    }
    return orElse();
  }
}

abstract class DoctorsError implements HomeState {
  const factory DoctorsError(final ErrorHandler errorHandler) =
      _$DoctorsErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsErrorImplCopyWith<_$DoctorsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
