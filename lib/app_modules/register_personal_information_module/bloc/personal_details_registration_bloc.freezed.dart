// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_details_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PersonalDetailsRegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            HostPersonalRegistrationDetails hostPersonalRegistrationDetails)
        hostPersonalDetailsRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            HostPersonalRegistrationDetails hostPersonalRegistrationDetails)?
        hostPersonalDetailsRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            HostPersonalRegistrationDetails hostPersonalRegistrationDetails)?
        hostPersonalDetailsRegistered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_HostPersonalDetailsRegistered value)
        hostPersonalDetailsRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_HostPersonalDetailsRegistered value)?
        hostPersonalDetailsRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_HostPersonalDetailsRegistered value)?
        hostPersonalDetailsRegistered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailsRegistrationEventCopyWith<$Res> {
  factory $PersonalDetailsRegistrationEventCopyWith(
          PersonalDetailsRegistrationEvent value,
          $Res Function(PersonalDetailsRegistrationEvent) then) =
      _$PersonalDetailsRegistrationEventCopyWithImpl<$Res,
          PersonalDetailsRegistrationEvent>;
}

/// @nodoc
class _$PersonalDetailsRegistrationEventCopyWithImpl<$Res,
        $Val extends PersonalDetailsRegistrationEvent>
    implements $PersonalDetailsRegistrationEventCopyWith<$Res> {
  _$PersonalDetailsRegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalDetailsRegistrationEvent
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
    extends _$PersonalDetailsRegistrationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalDetailsRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PersonalDetailsRegistrationEvent.started()';
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
    required TResult Function(
            HostPersonalRegistrationDetails hostPersonalRegistrationDetails)
        hostPersonalDetailsRegistered,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            HostPersonalRegistrationDetails hostPersonalRegistrationDetails)?
        hostPersonalDetailsRegistered,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            HostPersonalRegistrationDetails hostPersonalRegistrationDetails)?
        hostPersonalDetailsRegistered,
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
    required TResult Function(_HostPersonalDetailsRegistered value)
        hostPersonalDetailsRegistered,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_HostPersonalDetailsRegistered value)?
        hostPersonalDetailsRegistered,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_HostPersonalDetailsRegistered value)?
        hostPersonalDetailsRegistered,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PersonalDetailsRegistrationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$HostPersonalDetailsRegisteredImplCopyWith<$Res> {
  factory _$$HostPersonalDetailsRegisteredImplCopyWith(
          _$HostPersonalDetailsRegisteredImpl value,
          $Res Function(_$HostPersonalDetailsRegisteredImpl) then) =
      __$$HostPersonalDetailsRegisteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HostPersonalRegistrationDetails hostPersonalRegistrationDetails});
}

/// @nodoc
class __$$HostPersonalDetailsRegisteredImplCopyWithImpl<$Res>
    extends _$PersonalDetailsRegistrationEventCopyWithImpl<$Res,
        _$HostPersonalDetailsRegisteredImpl>
    implements _$$HostPersonalDetailsRegisteredImplCopyWith<$Res> {
  __$$HostPersonalDetailsRegisteredImplCopyWithImpl(
      _$HostPersonalDetailsRegisteredImpl _value,
      $Res Function(_$HostPersonalDetailsRegisteredImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalDetailsRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostPersonalRegistrationDetails = null,
  }) {
    return _then(_$HostPersonalDetailsRegisteredImpl(
      null == hostPersonalRegistrationDetails
          ? _value.hostPersonalRegistrationDetails
          : hostPersonalRegistrationDetails // ignore: cast_nullable_to_non_nullable
              as HostPersonalRegistrationDetails,
    ));
  }
}

/// @nodoc

class _$HostPersonalDetailsRegisteredImpl
    implements _HostPersonalDetailsRegistered {
  const _$HostPersonalDetailsRegisteredImpl(
      this.hostPersonalRegistrationDetails);

  @override
  final HostPersonalRegistrationDetails hostPersonalRegistrationDetails;

  @override
  String toString() {
    return 'PersonalDetailsRegistrationEvent.hostPersonalDetailsRegistered(hostPersonalRegistrationDetails: $hostPersonalRegistrationDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostPersonalDetailsRegisteredImpl &&
            (identical(other.hostPersonalRegistrationDetails,
                    hostPersonalRegistrationDetails) ||
                other.hostPersonalRegistrationDetails ==
                    hostPersonalRegistrationDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hostPersonalRegistrationDetails);

  /// Create a copy of PersonalDetailsRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HostPersonalDetailsRegisteredImplCopyWith<
          _$HostPersonalDetailsRegisteredImpl>
      get copyWith => __$$HostPersonalDetailsRegisteredImplCopyWithImpl<
          _$HostPersonalDetailsRegisteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            HostPersonalRegistrationDetails hostPersonalRegistrationDetails)
        hostPersonalDetailsRegistered,
  }) {
    return hostPersonalDetailsRegistered(hostPersonalRegistrationDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            HostPersonalRegistrationDetails hostPersonalRegistrationDetails)?
        hostPersonalDetailsRegistered,
  }) {
    return hostPersonalDetailsRegistered?.call(hostPersonalRegistrationDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            HostPersonalRegistrationDetails hostPersonalRegistrationDetails)?
        hostPersonalDetailsRegistered,
    required TResult orElse(),
  }) {
    if (hostPersonalDetailsRegistered != null) {
      return hostPersonalDetailsRegistered(hostPersonalRegistrationDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_HostPersonalDetailsRegistered value)
        hostPersonalDetailsRegistered,
  }) {
    return hostPersonalDetailsRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_HostPersonalDetailsRegistered value)?
        hostPersonalDetailsRegistered,
  }) {
    return hostPersonalDetailsRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_HostPersonalDetailsRegistered value)?
        hostPersonalDetailsRegistered,
    required TResult orElse(),
  }) {
    if (hostPersonalDetailsRegistered != null) {
      return hostPersonalDetailsRegistered(this);
    }
    return orElse();
  }
}

abstract class _HostPersonalDetailsRegistered
    implements PersonalDetailsRegistrationEvent {
  const factory _HostPersonalDetailsRegistered(
          final HostPersonalRegistrationDetails
              hostPersonalRegistrationDetails) =
      _$HostPersonalDetailsRegisteredImpl;

  HostPersonalRegistrationDetails get hostPersonalRegistrationDetails;

  /// Create a copy of PersonalDetailsRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HostPersonalDetailsRegisteredImplCopyWith<
          _$HostPersonalDetailsRegisteredImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonalDetailsRegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterResponseModel response) success,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterResponseModel response)? success,
    TResult? Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterResponseModel response)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PersonalDetailsRegistrationStateLoading value)
        loading,
    required TResult Function(_PersonalDetailsRegistrationSuccess value)
        success,
    required TResult Function(_PersonalDetailsRegistrationFailure value)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PersonalDetailsRegistrationStateLoading value)? loading,
    TResult? Function(_PersonalDetailsRegistrationSuccess value)? success,
    TResult? Function(_PersonalDetailsRegistrationFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PersonalDetailsRegistrationStateLoading value)? loading,
    TResult Function(_PersonalDetailsRegistrationSuccess value)? success,
    TResult Function(_PersonalDetailsRegistrationFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailsRegistrationStateCopyWith<$Res> {
  factory $PersonalDetailsRegistrationStateCopyWith(
          PersonalDetailsRegistrationState value,
          $Res Function(PersonalDetailsRegistrationState) then) =
      _$PersonalDetailsRegistrationStateCopyWithImpl<$Res,
          PersonalDetailsRegistrationState>;
}

/// @nodoc
class _$PersonalDetailsRegistrationStateCopyWithImpl<$Res,
        $Val extends PersonalDetailsRegistrationState>
    implements $PersonalDetailsRegistrationStateCopyWith<$Res> {
  _$PersonalDetailsRegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalDetailsRegistrationState
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
    extends _$PersonalDetailsRegistrationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalDetailsRegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PersonalDetailsRegistrationState.initial()';
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
    required TResult Function(RegisterResponseModel response) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterResponseModel response)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterResponseModel response)? success,
    TResult Function(String errorMessage)? failure,
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
    required TResult Function(_PersonalDetailsRegistrationStateLoading value)
        loading,
    required TResult Function(_PersonalDetailsRegistrationSuccess value)
        success,
    required TResult Function(_PersonalDetailsRegistrationFailure value)
        failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PersonalDetailsRegistrationStateLoading value)? loading,
    TResult? Function(_PersonalDetailsRegistrationSuccess value)? success,
    TResult? Function(_PersonalDetailsRegistrationFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PersonalDetailsRegistrationStateLoading value)? loading,
    TResult Function(_PersonalDetailsRegistrationSuccess value)? success,
    TResult Function(_PersonalDetailsRegistrationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PersonalDetailsRegistrationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PersonalDetailsRegistrationStateLoadingImplCopyWith<$Res> {
  factory _$$PersonalDetailsRegistrationStateLoadingImplCopyWith(
          _$PersonalDetailsRegistrationStateLoadingImpl value,
          $Res Function(_$PersonalDetailsRegistrationStateLoadingImpl) then) =
      __$$PersonalDetailsRegistrationStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PersonalDetailsRegistrationStateLoadingImplCopyWithImpl<$Res>
    extends _$PersonalDetailsRegistrationStateCopyWithImpl<$Res,
        _$PersonalDetailsRegistrationStateLoadingImpl>
    implements _$$PersonalDetailsRegistrationStateLoadingImplCopyWith<$Res> {
  __$$PersonalDetailsRegistrationStateLoadingImplCopyWithImpl(
      _$PersonalDetailsRegistrationStateLoadingImpl _value,
      $Res Function(_$PersonalDetailsRegistrationStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalDetailsRegistrationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PersonalDetailsRegistrationStateLoadingImpl
    implements _PersonalDetailsRegistrationStateLoading {
  const _$PersonalDetailsRegistrationStateLoadingImpl();

  @override
  String toString() {
    return 'PersonalDetailsRegistrationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalDetailsRegistrationStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterResponseModel response) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterResponseModel response)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterResponseModel response)? success,
    TResult Function(String errorMessage)? failure,
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
    required TResult Function(_PersonalDetailsRegistrationStateLoading value)
        loading,
    required TResult Function(_PersonalDetailsRegistrationSuccess value)
        success,
    required TResult Function(_PersonalDetailsRegistrationFailure value)
        failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PersonalDetailsRegistrationStateLoading value)? loading,
    TResult? Function(_PersonalDetailsRegistrationSuccess value)? success,
    TResult? Function(_PersonalDetailsRegistrationFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PersonalDetailsRegistrationStateLoading value)? loading,
    TResult Function(_PersonalDetailsRegistrationSuccess value)? success,
    TResult Function(_PersonalDetailsRegistrationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PersonalDetailsRegistrationStateLoading
    implements PersonalDetailsRegistrationState {
  const factory _PersonalDetailsRegistrationStateLoading() =
      _$PersonalDetailsRegistrationStateLoadingImpl;
}

/// @nodoc
abstract class _$$PersonalDetailsRegistrationSuccessImplCopyWith<$Res> {
  factory _$$PersonalDetailsRegistrationSuccessImplCopyWith(
          _$PersonalDetailsRegistrationSuccessImpl value,
          $Res Function(_$PersonalDetailsRegistrationSuccessImpl) then) =
      __$$PersonalDetailsRegistrationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterResponseModel response});
}

/// @nodoc
class __$$PersonalDetailsRegistrationSuccessImplCopyWithImpl<$Res>
    extends _$PersonalDetailsRegistrationStateCopyWithImpl<$Res,
        _$PersonalDetailsRegistrationSuccessImpl>
    implements _$$PersonalDetailsRegistrationSuccessImplCopyWith<$Res> {
  __$$PersonalDetailsRegistrationSuccessImplCopyWithImpl(
      _$PersonalDetailsRegistrationSuccessImpl _value,
      $Res Function(_$PersonalDetailsRegistrationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalDetailsRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$PersonalDetailsRegistrationSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as RegisterResponseModel,
    ));
  }
}

/// @nodoc

class _$PersonalDetailsRegistrationSuccessImpl
    implements _PersonalDetailsRegistrationSuccess {
  const _$PersonalDetailsRegistrationSuccessImpl(this.response);

  @override
  final RegisterResponseModel response;

  @override
  String toString() {
    return 'PersonalDetailsRegistrationState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalDetailsRegistrationSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of PersonalDetailsRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalDetailsRegistrationSuccessImplCopyWith<
          _$PersonalDetailsRegistrationSuccessImpl>
      get copyWith => __$$PersonalDetailsRegistrationSuccessImplCopyWithImpl<
          _$PersonalDetailsRegistrationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterResponseModel response) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterResponseModel response)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterResponseModel response)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PersonalDetailsRegistrationStateLoading value)
        loading,
    required TResult Function(_PersonalDetailsRegistrationSuccess value)
        success,
    required TResult Function(_PersonalDetailsRegistrationFailure value)
        failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PersonalDetailsRegistrationStateLoading value)? loading,
    TResult? Function(_PersonalDetailsRegistrationSuccess value)? success,
    TResult? Function(_PersonalDetailsRegistrationFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PersonalDetailsRegistrationStateLoading value)? loading,
    TResult Function(_PersonalDetailsRegistrationSuccess value)? success,
    TResult Function(_PersonalDetailsRegistrationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PersonalDetailsRegistrationSuccess
    implements PersonalDetailsRegistrationState {
  const factory _PersonalDetailsRegistrationSuccess(
          final RegisterResponseModel response) =
      _$PersonalDetailsRegistrationSuccessImpl;

  RegisterResponseModel get response;

  /// Create a copy of PersonalDetailsRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalDetailsRegistrationSuccessImplCopyWith<
          _$PersonalDetailsRegistrationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonalDetailsRegistrationFailureImplCopyWith<$Res> {
  factory _$$PersonalDetailsRegistrationFailureImplCopyWith(
          _$PersonalDetailsRegistrationFailureImpl value,
          $Res Function(_$PersonalDetailsRegistrationFailureImpl) then) =
      __$$PersonalDetailsRegistrationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$PersonalDetailsRegistrationFailureImplCopyWithImpl<$Res>
    extends _$PersonalDetailsRegistrationStateCopyWithImpl<$Res,
        _$PersonalDetailsRegistrationFailureImpl>
    implements _$$PersonalDetailsRegistrationFailureImplCopyWith<$Res> {
  __$$PersonalDetailsRegistrationFailureImplCopyWithImpl(
      _$PersonalDetailsRegistrationFailureImpl _value,
      $Res Function(_$PersonalDetailsRegistrationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalDetailsRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$PersonalDetailsRegistrationFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PersonalDetailsRegistrationFailureImpl
    implements _PersonalDetailsRegistrationFailure {
  const _$PersonalDetailsRegistrationFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PersonalDetailsRegistrationState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalDetailsRegistrationFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of PersonalDetailsRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalDetailsRegistrationFailureImplCopyWith<
          _$PersonalDetailsRegistrationFailureImpl>
      get copyWith => __$$PersonalDetailsRegistrationFailureImplCopyWithImpl<
          _$PersonalDetailsRegistrationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterResponseModel response) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterResponseModel response)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterResponseModel response)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PersonalDetailsRegistrationStateLoading value)
        loading,
    required TResult Function(_PersonalDetailsRegistrationSuccess value)
        success,
    required TResult Function(_PersonalDetailsRegistrationFailure value)
        failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PersonalDetailsRegistrationStateLoading value)? loading,
    TResult? Function(_PersonalDetailsRegistrationSuccess value)? success,
    TResult? Function(_PersonalDetailsRegistrationFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PersonalDetailsRegistrationStateLoading value)? loading,
    TResult Function(_PersonalDetailsRegistrationSuccess value)? success,
    TResult Function(_PersonalDetailsRegistrationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PersonalDetailsRegistrationFailure
    implements PersonalDetailsRegistrationState {
  const factory _PersonalDetailsRegistrationFailure(final String errorMessage) =
      _$PersonalDetailsRegistrationFailureImpl;

  String get errorMessage;

  /// Create a copy of PersonalDetailsRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalDetailsRegistrationFailureImplCopyWith<
          _$PersonalDetailsRegistrationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
