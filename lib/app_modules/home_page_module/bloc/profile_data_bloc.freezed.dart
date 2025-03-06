// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() profileDataFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? profileDataFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? profileDataFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_profileDataFetched value) profileDataFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_profileDataFetched value)? profileDataFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_profileDataFetched value)? profileDataFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataEventCopyWith<$Res> {
  factory $ProfileDataEventCopyWith(
          ProfileDataEvent value, $Res Function(ProfileDataEvent) then) =
      _$ProfileDataEventCopyWithImpl<$Res, ProfileDataEvent>;
}

/// @nodoc
class _$ProfileDataEventCopyWithImpl<$Res, $Val extends ProfileDataEvent>
    implements $ProfileDataEventCopyWith<$Res> {
  _$ProfileDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProfileDataEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProfileDataEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() profileDataFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? profileDataFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? profileDataFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_profileDataFetched value) profileDataFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_profileDataFetched value)? profileDataFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_profileDataFetched value)? profileDataFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileDataEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$profileDataFetchedImplCopyWith<$Res> {
  factory _$$profileDataFetchedImplCopyWith(_$profileDataFetchedImpl value,
          $Res Function(_$profileDataFetchedImpl) then) =
      __$$profileDataFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$profileDataFetchedImplCopyWithImpl<$Res>
    extends _$ProfileDataEventCopyWithImpl<$Res, _$profileDataFetchedImpl>
    implements _$$profileDataFetchedImplCopyWith<$Res> {
  __$$profileDataFetchedImplCopyWithImpl(_$profileDataFetchedImpl _value,
      $Res Function(_$profileDataFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$profileDataFetchedImpl implements _profileDataFetched {
  const _$profileDataFetchedImpl();

  @override
  String toString() {
    return 'ProfileDataEvent.profileDataFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$profileDataFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() profileDataFetched,
  }) {
    return profileDataFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? profileDataFetched,
  }) {
    return profileDataFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? profileDataFetched,
    required TResult orElse(),
  }) {
    if (profileDataFetched != null) {
      return profileDataFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_profileDataFetched value) profileDataFetched,
  }) {
    return profileDataFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_profileDataFetched value)? profileDataFetched,
  }) {
    return profileDataFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_profileDataFetched value)? profileDataFetched,
    required TResult orElse(),
  }) {
    if (profileDataFetched != null) {
      return profileDataFetched(this);
    }
    return orElse();
  }
}

abstract class _profileDataFetched implements ProfileDataEvent {
  const factory _profileDataFetched() = _$profileDataFetchedImpl;
}

/// @nodoc
mixin _$ProfileDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HostDataModel profileData) success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HostDataModel profileData)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HostDataModel profileData)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileDataLoading value) loading,
    required TResult Function(ProfileDataSuccess value) success,
    required TResult Function(ProfileDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileDataLoading value)? loading,
    TResult? Function(ProfileDataSuccess value)? success,
    TResult? Function(ProfileDataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileDataLoading value)? loading,
    TResult Function(ProfileDataSuccess value)? success,
    TResult Function(ProfileDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataStateCopyWith<$Res> {
  factory $ProfileDataStateCopyWith(
          ProfileDataState value, $Res Function(ProfileDataState) then) =
      _$ProfileDataStateCopyWithImpl<$Res, ProfileDataState>;
}

/// @nodoc
class _$ProfileDataStateCopyWithImpl<$Res, $Val extends ProfileDataState>
    implements $ProfileDataStateCopyWith<$Res> {
  _$ProfileDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDataState
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
    extends _$ProfileDataStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileDataState.initial()';
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
    required TResult Function() loading,
    required TResult Function(HostDataModel profileData) success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HostDataModel profileData)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HostDataModel profileData)? success,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(ProfileDataLoading value) loading,
    required TResult Function(ProfileDataSuccess value) success,
    required TResult Function(ProfileDataError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileDataLoading value)? loading,
    TResult? Function(ProfileDataSuccess value)? success,
    TResult? Function(ProfileDataError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileDataLoading value)? loading,
    TResult Function(ProfileDataSuccess value)? success,
    TResult Function(ProfileDataError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileDataState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProfileDataLoadingImplCopyWith<$Res> {
  factory _$$ProfileDataLoadingImplCopyWith(_$ProfileDataLoadingImpl value,
          $Res Function(_$ProfileDataLoadingImpl) then) =
      __$$ProfileDataLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileDataLoadingImplCopyWithImpl<$Res>
    extends _$ProfileDataStateCopyWithImpl<$Res, _$ProfileDataLoadingImpl>
    implements _$$ProfileDataLoadingImplCopyWith<$Res> {
  __$$ProfileDataLoadingImplCopyWithImpl(_$ProfileDataLoadingImpl _value,
      $Res Function(_$ProfileDataLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileDataLoadingImpl implements ProfileDataLoading {
  const _$ProfileDataLoadingImpl();

  @override
  String toString() {
    return 'ProfileDataState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileDataLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HostDataModel profileData) success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HostDataModel profileData)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HostDataModel profileData)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileDataLoading value) loading,
    required TResult Function(ProfileDataSuccess value) success,
    required TResult Function(ProfileDataError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileDataLoading value)? loading,
    TResult? Function(ProfileDataSuccess value)? success,
    TResult? Function(ProfileDataError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileDataLoading value)? loading,
    TResult Function(ProfileDataSuccess value)? success,
    TResult Function(ProfileDataError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileDataLoading implements ProfileDataState {
  const factory ProfileDataLoading() = _$ProfileDataLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileDataSuccessImplCopyWith<$Res> {
  factory _$$ProfileDataSuccessImplCopyWith(_$ProfileDataSuccessImpl value,
          $Res Function(_$ProfileDataSuccessImpl) then) =
      __$$ProfileDataSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HostDataModel profileData});
}

/// @nodoc
class __$$ProfileDataSuccessImplCopyWithImpl<$Res>
    extends _$ProfileDataStateCopyWithImpl<$Res, _$ProfileDataSuccessImpl>
    implements _$$ProfileDataSuccessImplCopyWith<$Res> {
  __$$ProfileDataSuccessImplCopyWithImpl(_$ProfileDataSuccessImpl _value,
      $Res Function(_$ProfileDataSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileData = null,
  }) {
    return _then(_$ProfileDataSuccessImpl(
      null == profileData
          ? _value.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as HostDataModel,
    ));
  }
}

/// @nodoc

class _$ProfileDataSuccessImpl implements ProfileDataSuccess {
  const _$ProfileDataSuccessImpl(this.profileData);

  @override
  final HostDataModel profileData;

  @override
  String toString() {
    return 'ProfileDataState.success(profileData: $profileData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataSuccessImpl &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileData);

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataSuccessImplCopyWith<_$ProfileDataSuccessImpl> get copyWith =>
      __$$ProfileDataSuccessImplCopyWithImpl<_$ProfileDataSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HostDataModel profileData) success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(profileData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HostDataModel profileData)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(profileData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HostDataModel profileData)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(profileData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileDataLoading value) loading,
    required TResult Function(ProfileDataSuccess value) success,
    required TResult Function(ProfileDataError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileDataLoading value)? loading,
    TResult? Function(ProfileDataSuccess value)? success,
    TResult? Function(ProfileDataError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileDataLoading value)? loading,
    TResult Function(ProfileDataSuccess value)? success,
    TResult Function(ProfileDataError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProfileDataSuccess implements ProfileDataState {
  const factory ProfileDataSuccess(final HostDataModel profileData) =
      _$ProfileDataSuccessImpl;

  HostDataModel get profileData;

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataSuccessImplCopyWith<_$ProfileDataSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileDataErrorImplCopyWith<$Res> {
  factory _$$ProfileDataErrorImplCopyWith(_$ProfileDataErrorImpl value,
          $Res Function(_$ProfileDataErrorImpl) then) =
      __$$ProfileDataErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ProfileDataErrorImplCopyWithImpl<$Res>
    extends _$ProfileDataStateCopyWithImpl<$Res, _$ProfileDataErrorImpl>
    implements _$$ProfileDataErrorImplCopyWith<$Res> {
  __$$ProfileDataErrorImplCopyWithImpl(_$ProfileDataErrorImpl _value,
      $Res Function(_$ProfileDataErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ProfileDataErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileDataErrorImpl implements ProfileDataError {
  const _$ProfileDataErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ProfileDataState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataErrorImplCopyWith<_$ProfileDataErrorImpl> get copyWith =>
      __$$ProfileDataErrorImplCopyWithImpl<_$ProfileDataErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HostDataModel profileData) success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HostDataModel profileData)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HostDataModel profileData)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileDataLoading value) loading,
    required TResult Function(ProfileDataSuccess value) success,
    required TResult Function(ProfileDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileDataLoading value)? loading,
    TResult? Function(ProfileDataSuccess value)? success,
    TResult? Function(ProfileDataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileDataLoading value)? loading,
    TResult Function(ProfileDataSuccess value)? success,
    TResult Function(ProfileDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileDataError implements ProfileDataState {
  const factory ProfileDataError(final String errorMessage) =
      _$ProfileDataErrorImpl;

  String get errorMessage;

  /// Create a copy of ProfileDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataErrorImplCopyWith<_$ProfileDataErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
