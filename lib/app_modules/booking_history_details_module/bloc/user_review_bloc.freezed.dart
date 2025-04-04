// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserReviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int bookingId) userReviewFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int bookingId)? userReviewFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int bookingId)? userReviewFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_userReviewFetched value) userReviewFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userReviewFetched value)? userReviewFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userReviewFetched value)? userReviewFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReviewEventCopyWith<$Res> {
  factory $UserReviewEventCopyWith(
          UserReviewEvent value, $Res Function(UserReviewEvent) then) =
      _$UserReviewEventCopyWithImpl<$Res, UserReviewEvent>;
}

/// @nodoc
class _$UserReviewEventCopyWithImpl<$Res, $Val extends UserReviewEvent>
    implements $UserReviewEventCopyWith<$Res> {
  _$UserReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserReviewEvent
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
    extends _$UserReviewEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserReviewEvent.started()';
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
    required TResult Function(int bookingId) userReviewFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int bookingId)? userReviewFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int bookingId)? userReviewFetched,
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
    required TResult Function(_userReviewFetched value) userReviewFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userReviewFetched value)? userReviewFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userReviewFetched value)? userReviewFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserReviewEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$userReviewFetchedImplCopyWith<$Res> {
  factory _$$userReviewFetchedImplCopyWith(_$userReviewFetchedImpl value,
          $Res Function(_$userReviewFetchedImpl) then) =
      __$$userReviewFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bookingId});
}

/// @nodoc
class __$$userReviewFetchedImplCopyWithImpl<$Res>
    extends _$UserReviewEventCopyWithImpl<$Res, _$userReviewFetchedImpl>
    implements _$$userReviewFetchedImplCopyWith<$Res> {
  __$$userReviewFetchedImplCopyWithImpl(_$userReviewFetchedImpl _value,
      $Res Function(_$userReviewFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$userReviewFetchedImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$userReviewFetchedImpl implements _userReviewFetched {
  const _$userReviewFetchedImpl(this.bookingId);

  @override
  final int bookingId;

  @override
  String toString() {
    return 'UserReviewEvent.userReviewFetched(bookingId: $bookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userReviewFetchedImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  /// Create a copy of UserReviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$userReviewFetchedImplCopyWith<_$userReviewFetchedImpl> get copyWith =>
      __$$userReviewFetchedImplCopyWithImpl<_$userReviewFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int bookingId) userReviewFetched,
  }) {
    return userReviewFetched(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int bookingId)? userReviewFetched,
  }) {
    return userReviewFetched?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int bookingId)? userReviewFetched,
    required TResult orElse(),
  }) {
    if (userReviewFetched != null) {
      return userReviewFetched(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_userReviewFetched value) userReviewFetched,
  }) {
    return userReviewFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userReviewFetched value)? userReviewFetched,
  }) {
    return userReviewFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userReviewFetched value)? userReviewFetched,
    required TResult orElse(),
  }) {
    if (userReviewFetched != null) {
      return userReviewFetched(this);
    }
    return orElse();
  }
}

abstract class _userReviewFetched implements UserReviewEvent {
  const factory _userReviewFetched(final int bookingId) =
      _$userReviewFetchedImpl;

  int get bookingId;

  /// Create a copy of UserReviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$userReviewFetchedImplCopyWith<_$userReviewFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserReviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReview) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReview)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReview)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserReviewLoading value) loading,
    required TResult Function(UserReviewSuccess value) success,
    required TResult Function(UserReviewError value) error,
    required TResult Function(UserReviewEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewLoading value)? loading,
    TResult? Function(UserReviewSuccess value)? success,
    TResult? Function(UserReviewError value)? error,
    TResult? Function(UserReviewEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewLoading value)? loading,
    TResult Function(UserReviewSuccess value)? success,
    TResult Function(UserReviewError value)? error,
    TResult Function(UserReviewEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReviewStateCopyWith<$Res> {
  factory $UserReviewStateCopyWith(
          UserReviewState value, $Res Function(UserReviewState) then) =
      _$UserReviewStateCopyWithImpl<$Res, UserReviewState>;
}

/// @nodoc
class _$UserReviewStateCopyWithImpl<$Res, $Val extends UserReviewState>
    implements $UserReviewStateCopyWith<$Res> {
  _$UserReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserReviewState
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
    extends _$UserReviewStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserReviewState.initial()';
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
    required TResult Function(List<UserReviewModel> userReview) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReview)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReview)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(UserReviewLoading value) loading,
    required TResult Function(UserReviewSuccess value) success,
    required TResult Function(UserReviewError value) error,
    required TResult Function(UserReviewEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewLoading value)? loading,
    TResult? Function(UserReviewSuccess value)? success,
    TResult? Function(UserReviewError value)? error,
    TResult? Function(UserReviewEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewLoading value)? loading,
    TResult Function(UserReviewSuccess value)? success,
    TResult Function(UserReviewError value)? error,
    TResult Function(UserReviewEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserReviewState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserReviewLoadingImplCopyWith<$Res> {
  factory _$$UserReviewLoadingImplCopyWith(_$UserReviewLoadingImpl value,
          $Res Function(_$UserReviewLoadingImpl) then) =
      __$$UserReviewLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserReviewLoadingImplCopyWithImpl<$Res>
    extends _$UserReviewStateCopyWithImpl<$Res, _$UserReviewLoadingImpl>
    implements _$$UserReviewLoadingImplCopyWith<$Res> {
  __$$UserReviewLoadingImplCopyWithImpl(_$UserReviewLoadingImpl _value,
      $Res Function(_$UserReviewLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserReviewLoadingImpl implements UserReviewLoading {
  const _$UserReviewLoadingImpl();

  @override
  String toString() {
    return 'UserReviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserReviewLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReview) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReview)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReview)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(UserReviewLoading value) loading,
    required TResult Function(UserReviewSuccess value) success,
    required TResult Function(UserReviewError value) error,
    required TResult Function(UserReviewEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewLoading value)? loading,
    TResult? Function(UserReviewSuccess value)? success,
    TResult? Function(UserReviewError value)? error,
    TResult? Function(UserReviewEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewLoading value)? loading,
    TResult Function(UserReviewSuccess value)? success,
    TResult Function(UserReviewError value)? error,
    TResult Function(UserReviewEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserReviewLoading implements UserReviewState {
  const factory UserReviewLoading() = _$UserReviewLoadingImpl;
}

/// @nodoc
abstract class _$$UserReviewSuccessImplCopyWith<$Res> {
  factory _$$UserReviewSuccessImplCopyWith(_$UserReviewSuccessImpl value,
          $Res Function(_$UserReviewSuccessImpl) then) =
      __$$UserReviewSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserReviewModel> userReview});
}

/// @nodoc
class __$$UserReviewSuccessImplCopyWithImpl<$Res>
    extends _$UserReviewStateCopyWithImpl<$Res, _$UserReviewSuccessImpl>
    implements _$$UserReviewSuccessImplCopyWith<$Res> {
  __$$UserReviewSuccessImplCopyWithImpl(_$UserReviewSuccessImpl _value,
      $Res Function(_$UserReviewSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userReview = null,
  }) {
    return _then(_$UserReviewSuccessImpl(
      null == userReview
          ? _value._userReview
          : userReview // ignore: cast_nullable_to_non_nullable
              as List<UserReviewModel>,
    ));
  }
}

/// @nodoc

class _$UserReviewSuccessImpl implements UserReviewSuccess {
  const _$UserReviewSuccessImpl(final List<UserReviewModel> userReview)
      : _userReview = userReview;

  final List<UserReviewModel> _userReview;
  @override
  List<UserReviewModel> get userReview {
    if (_userReview is EqualUnmodifiableListView) return _userReview;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userReview);
  }

  @override
  String toString() {
    return 'UserReviewState.success(userReview: $userReview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserReviewSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._userReview, _userReview));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userReview));

  /// Create a copy of UserReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserReviewSuccessImplCopyWith<_$UserReviewSuccessImpl> get copyWith =>
      __$$UserReviewSuccessImplCopyWithImpl<_$UserReviewSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReview) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return success(userReview);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReview)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(userReview);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReview)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userReview);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserReviewLoading value) loading,
    required TResult Function(UserReviewSuccess value) success,
    required TResult Function(UserReviewError value) error,
    required TResult Function(UserReviewEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewLoading value)? loading,
    TResult? Function(UserReviewSuccess value)? success,
    TResult? Function(UserReviewError value)? error,
    TResult? Function(UserReviewEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewLoading value)? loading,
    TResult Function(UserReviewSuccess value)? success,
    TResult Function(UserReviewError value)? error,
    TResult Function(UserReviewEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserReviewSuccess implements UserReviewState {
  const factory UserReviewSuccess(final List<UserReviewModel> userReview) =
      _$UserReviewSuccessImpl;

  List<UserReviewModel> get userReview;

  /// Create a copy of UserReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserReviewSuccessImplCopyWith<_$UserReviewSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserReviewErrorImplCopyWith<$Res> {
  factory _$$UserReviewErrorImplCopyWith(_$UserReviewErrorImpl value,
          $Res Function(_$UserReviewErrorImpl) then) =
      __$$UserReviewErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$UserReviewErrorImplCopyWithImpl<$Res>
    extends _$UserReviewStateCopyWithImpl<$Res, _$UserReviewErrorImpl>
    implements _$$UserReviewErrorImplCopyWith<$Res> {
  __$$UserReviewErrorImplCopyWithImpl(
      _$UserReviewErrorImpl _value, $Res Function(_$UserReviewErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$UserReviewErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserReviewErrorImpl implements UserReviewError {
  const _$UserReviewErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserReviewState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserReviewErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of UserReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserReviewErrorImplCopyWith<_$UserReviewErrorImpl> get copyWith =>
      __$$UserReviewErrorImplCopyWithImpl<_$UserReviewErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReview) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReview)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReview)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(UserReviewLoading value) loading,
    required TResult Function(UserReviewSuccess value) success,
    required TResult Function(UserReviewError value) error,
    required TResult Function(UserReviewEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewLoading value)? loading,
    TResult? Function(UserReviewSuccess value)? success,
    TResult? Function(UserReviewError value)? error,
    TResult? Function(UserReviewEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewLoading value)? loading,
    TResult Function(UserReviewSuccess value)? success,
    TResult Function(UserReviewError value)? error,
    TResult Function(UserReviewEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserReviewError implements UserReviewState {
  const factory UserReviewError(final String errorMessage) =
      _$UserReviewErrorImpl;

  String get errorMessage;

  /// Create a copy of UserReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserReviewErrorImplCopyWith<_$UserReviewErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserReviewEmptyImplCopyWith<$Res> {
  factory _$$UserReviewEmptyImplCopyWith(_$UserReviewEmptyImpl value,
          $Res Function(_$UserReviewEmptyImpl) then) =
      __$$UserReviewEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserReviewEmptyImplCopyWithImpl<$Res>
    extends _$UserReviewStateCopyWithImpl<$Res, _$UserReviewEmptyImpl>
    implements _$$UserReviewEmptyImplCopyWith<$Res> {
  __$$UserReviewEmptyImplCopyWithImpl(
      _$UserReviewEmptyImpl _value, $Res Function(_$UserReviewEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserReviewEmptyImpl implements UserReviewEmpty {
  const _$UserReviewEmptyImpl();

  @override
  String toString() {
    return 'UserReviewState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserReviewEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReview) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReview)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReview)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserReviewLoading value) loading,
    required TResult Function(UserReviewSuccess value) success,
    required TResult Function(UserReviewError value) error,
    required TResult Function(UserReviewEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewLoading value)? loading,
    TResult? Function(UserReviewSuccess value)? success,
    TResult? Function(UserReviewError value)? error,
    TResult? Function(UserReviewEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewLoading value)? loading,
    TResult Function(UserReviewSuccess value)? success,
    TResult Function(UserReviewError value)? error,
    TResult Function(UserReviewEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class UserReviewEmpty implements UserReviewState {
  const factory UserReviewEmpty() = _$UserReviewEmptyImpl;
}
