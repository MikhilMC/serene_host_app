// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventsHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() eventsHistoryFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? eventsHistoryFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? eventsHistoryFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_eventsHistoryFetched value) eventsHistoryFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_eventsHistoryFetched value)? eventsHistoryFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_eventsHistoryFetched value)? eventsHistoryFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsHistoryEventCopyWith<$Res> {
  factory $EventsHistoryEventCopyWith(
          EventsHistoryEvent value, $Res Function(EventsHistoryEvent) then) =
      _$EventsHistoryEventCopyWithImpl<$Res, EventsHistoryEvent>;
}

/// @nodoc
class _$EventsHistoryEventCopyWithImpl<$Res, $Val extends EventsHistoryEvent>
    implements $EventsHistoryEventCopyWith<$Res> {
  _$EventsHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventsHistoryEvent
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
    extends _$EventsHistoryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'EventsHistoryEvent.started()';
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
    required TResult Function() eventsHistoryFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? eventsHistoryFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? eventsHistoryFetched,
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
    required TResult Function(_eventsHistoryFetched value) eventsHistoryFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_eventsHistoryFetched value)? eventsHistoryFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_eventsHistoryFetched value)? eventsHistoryFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EventsHistoryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$eventsHistoryFetchedImplCopyWith<$Res> {
  factory _$$eventsHistoryFetchedImplCopyWith(_$eventsHistoryFetchedImpl value,
          $Res Function(_$eventsHistoryFetchedImpl) then) =
      __$$eventsHistoryFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$eventsHistoryFetchedImplCopyWithImpl<$Res>
    extends _$EventsHistoryEventCopyWithImpl<$Res, _$eventsHistoryFetchedImpl>
    implements _$$eventsHistoryFetchedImplCopyWith<$Res> {
  __$$eventsHistoryFetchedImplCopyWithImpl(_$eventsHistoryFetchedImpl _value,
      $Res Function(_$eventsHistoryFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$eventsHistoryFetchedImpl implements _eventsHistoryFetched {
  const _$eventsHistoryFetchedImpl();

  @override
  String toString() {
    return 'EventsHistoryEvent.eventsHistoryFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$eventsHistoryFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() eventsHistoryFetched,
  }) {
    return eventsHistoryFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? eventsHistoryFetched,
  }) {
    return eventsHistoryFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? eventsHistoryFetched,
    required TResult orElse(),
  }) {
    if (eventsHistoryFetched != null) {
      return eventsHistoryFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_eventsHistoryFetched value) eventsHistoryFetched,
  }) {
    return eventsHistoryFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_eventsHistoryFetched value)? eventsHistoryFetched,
  }) {
    return eventsHistoryFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_eventsHistoryFetched value)? eventsHistoryFetched,
    required TResult orElse(),
  }) {
    if (eventsHistoryFetched != null) {
      return eventsHistoryFetched(this);
    }
    return orElse();
  }
}

abstract class _eventsHistoryFetched implements EventsHistoryEvent {
  const factory _eventsHistoryFetched() = _$eventsHistoryFetchedImpl;
}

/// @nodoc
mixin _$EventsHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> previousEvents) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> previousEvents)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> previousEvents)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EventsHistoryLoading value) loading,
    required TResult Function(EventsHistorySuccess value) success,
    required TResult Function(EventsHistoryError value) error,
    required TResult Function(EventsHistoryEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EventsHistoryLoading value)? loading,
    TResult? Function(EventsHistorySuccess value)? success,
    TResult? Function(EventsHistoryError value)? error,
    TResult? Function(EventsHistoryEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EventsHistoryLoading value)? loading,
    TResult Function(EventsHistorySuccess value)? success,
    TResult Function(EventsHistoryError value)? error,
    TResult Function(EventsHistoryEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsHistoryStateCopyWith<$Res> {
  factory $EventsHistoryStateCopyWith(
          EventsHistoryState value, $Res Function(EventsHistoryState) then) =
      _$EventsHistoryStateCopyWithImpl<$Res, EventsHistoryState>;
}

/// @nodoc
class _$EventsHistoryStateCopyWithImpl<$Res, $Val extends EventsHistoryState>
    implements $EventsHistoryStateCopyWith<$Res> {
  _$EventsHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventsHistoryState
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
    extends _$EventsHistoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EventsHistoryState.initial()';
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
    required TResult Function(List<EventModel> previousEvents) success,
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
    TResult? Function(List<EventModel> previousEvents)? success,
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
    TResult Function(List<EventModel> previousEvents)? success,
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
    required TResult Function(EventsHistoryLoading value) loading,
    required TResult Function(EventsHistorySuccess value) success,
    required TResult Function(EventsHistoryError value) error,
    required TResult Function(EventsHistoryEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EventsHistoryLoading value)? loading,
    TResult? Function(EventsHistorySuccess value)? success,
    TResult? Function(EventsHistoryError value)? error,
    TResult? Function(EventsHistoryEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EventsHistoryLoading value)? loading,
    TResult Function(EventsHistorySuccess value)? success,
    TResult Function(EventsHistoryError value)? error,
    TResult Function(EventsHistoryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EventsHistoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$EventsHistoryLoadingImplCopyWith<$Res> {
  factory _$$EventsHistoryLoadingImplCopyWith(_$EventsHistoryLoadingImpl value,
          $Res Function(_$EventsHistoryLoadingImpl) then) =
      __$$EventsHistoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventsHistoryLoadingImplCopyWithImpl<$Res>
    extends _$EventsHistoryStateCopyWithImpl<$Res, _$EventsHistoryLoadingImpl>
    implements _$$EventsHistoryLoadingImplCopyWith<$Res> {
  __$$EventsHistoryLoadingImplCopyWithImpl(_$EventsHistoryLoadingImpl _value,
      $Res Function(_$EventsHistoryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EventsHistoryLoadingImpl implements EventsHistoryLoading {
  const _$EventsHistoryLoadingImpl();

  @override
  String toString() {
    return 'EventsHistoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsHistoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> previousEvents) success,
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
    TResult? Function(List<EventModel> previousEvents)? success,
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
    TResult Function(List<EventModel> previousEvents)? success,
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
    required TResult Function(EventsHistoryLoading value) loading,
    required TResult Function(EventsHistorySuccess value) success,
    required TResult Function(EventsHistoryError value) error,
    required TResult Function(EventsHistoryEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EventsHistoryLoading value)? loading,
    TResult? Function(EventsHistorySuccess value)? success,
    TResult? Function(EventsHistoryError value)? error,
    TResult? Function(EventsHistoryEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EventsHistoryLoading value)? loading,
    TResult Function(EventsHistorySuccess value)? success,
    TResult Function(EventsHistoryError value)? error,
    TResult Function(EventsHistoryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EventsHistoryLoading implements EventsHistoryState {
  const factory EventsHistoryLoading() = _$EventsHistoryLoadingImpl;
}

/// @nodoc
abstract class _$$EventsHistorySuccessImplCopyWith<$Res> {
  factory _$$EventsHistorySuccessImplCopyWith(_$EventsHistorySuccessImpl value,
          $Res Function(_$EventsHistorySuccessImpl) then) =
      __$$EventsHistorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EventModel> previousEvents});
}

/// @nodoc
class __$$EventsHistorySuccessImplCopyWithImpl<$Res>
    extends _$EventsHistoryStateCopyWithImpl<$Res, _$EventsHistorySuccessImpl>
    implements _$$EventsHistorySuccessImplCopyWith<$Res> {
  __$$EventsHistorySuccessImplCopyWithImpl(_$EventsHistorySuccessImpl _value,
      $Res Function(_$EventsHistorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousEvents = null,
  }) {
    return _then(_$EventsHistorySuccessImpl(
      null == previousEvents
          ? _value._previousEvents
          : previousEvents // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc

class _$EventsHistorySuccessImpl implements EventsHistorySuccess {
  const _$EventsHistorySuccessImpl(final List<EventModel> previousEvents)
      : _previousEvents = previousEvents;

  final List<EventModel> _previousEvents;
  @override
  List<EventModel> get previousEvents {
    if (_previousEvents is EqualUnmodifiableListView) return _previousEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousEvents);
  }

  @override
  String toString() {
    return 'EventsHistoryState.success(previousEvents: $previousEvents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsHistorySuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._previousEvents, _previousEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_previousEvents));

  /// Create a copy of EventsHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsHistorySuccessImplCopyWith<_$EventsHistorySuccessImpl>
      get copyWith =>
          __$$EventsHistorySuccessImplCopyWithImpl<_$EventsHistorySuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> previousEvents) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return success(previousEvents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> previousEvents)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(previousEvents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> previousEvents)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(previousEvents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EventsHistoryLoading value) loading,
    required TResult Function(EventsHistorySuccess value) success,
    required TResult Function(EventsHistoryError value) error,
    required TResult Function(EventsHistoryEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EventsHistoryLoading value)? loading,
    TResult? Function(EventsHistorySuccess value)? success,
    TResult? Function(EventsHistoryError value)? error,
    TResult? Function(EventsHistoryEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EventsHistoryLoading value)? loading,
    TResult Function(EventsHistorySuccess value)? success,
    TResult Function(EventsHistoryError value)? error,
    TResult Function(EventsHistoryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EventsHistorySuccess implements EventsHistoryState {
  const factory EventsHistorySuccess(final List<EventModel> previousEvents) =
      _$EventsHistorySuccessImpl;

  List<EventModel> get previousEvents;

  /// Create a copy of EventsHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventsHistorySuccessImplCopyWith<_$EventsHistorySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventsHistoryErrorImplCopyWith<$Res> {
  factory _$$EventsHistoryErrorImplCopyWith(_$EventsHistoryErrorImpl value,
          $Res Function(_$EventsHistoryErrorImpl) then) =
      __$$EventsHistoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$EventsHistoryErrorImplCopyWithImpl<$Res>
    extends _$EventsHistoryStateCopyWithImpl<$Res, _$EventsHistoryErrorImpl>
    implements _$$EventsHistoryErrorImplCopyWith<$Res> {
  __$$EventsHistoryErrorImplCopyWithImpl(_$EventsHistoryErrorImpl _value,
      $Res Function(_$EventsHistoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$EventsHistoryErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventsHistoryErrorImpl implements EventsHistoryError {
  const _$EventsHistoryErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'EventsHistoryState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsHistoryErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of EventsHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsHistoryErrorImplCopyWith<_$EventsHistoryErrorImpl> get copyWith =>
      __$$EventsHistoryErrorImplCopyWithImpl<_$EventsHistoryErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> previousEvents) success,
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
    TResult? Function(List<EventModel> previousEvents)? success,
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
    TResult Function(List<EventModel> previousEvents)? success,
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
    required TResult Function(EventsHistoryLoading value) loading,
    required TResult Function(EventsHistorySuccess value) success,
    required TResult Function(EventsHistoryError value) error,
    required TResult Function(EventsHistoryEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EventsHistoryLoading value)? loading,
    TResult? Function(EventsHistorySuccess value)? success,
    TResult? Function(EventsHistoryError value)? error,
    TResult? Function(EventsHistoryEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EventsHistoryLoading value)? loading,
    TResult Function(EventsHistorySuccess value)? success,
    TResult Function(EventsHistoryError value)? error,
    TResult Function(EventsHistoryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EventsHistoryError implements EventsHistoryState {
  const factory EventsHistoryError(final String errorMessage) =
      _$EventsHistoryErrorImpl;

  String get errorMessage;

  /// Create a copy of EventsHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventsHistoryErrorImplCopyWith<_$EventsHistoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventsHistoryEmptyImplCopyWith<$Res> {
  factory _$$EventsHistoryEmptyImplCopyWith(_$EventsHistoryEmptyImpl value,
          $Res Function(_$EventsHistoryEmptyImpl) then) =
      __$$EventsHistoryEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventsHistoryEmptyImplCopyWithImpl<$Res>
    extends _$EventsHistoryStateCopyWithImpl<$Res, _$EventsHistoryEmptyImpl>
    implements _$$EventsHistoryEmptyImplCopyWith<$Res> {
  __$$EventsHistoryEmptyImplCopyWithImpl(_$EventsHistoryEmptyImpl _value,
      $Res Function(_$EventsHistoryEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EventsHistoryEmptyImpl implements EventsHistoryEmpty {
  const _$EventsHistoryEmptyImpl();

  @override
  String toString() {
    return 'EventsHistoryState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventsHistoryEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> previousEvents) success,
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
    TResult? Function(List<EventModel> previousEvents)? success,
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
    TResult Function(List<EventModel> previousEvents)? success,
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
    required TResult Function(EventsHistoryLoading value) loading,
    required TResult Function(EventsHistorySuccess value) success,
    required TResult Function(EventsHistoryError value) error,
    required TResult Function(EventsHistoryEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(EventsHistoryLoading value)? loading,
    TResult? Function(EventsHistorySuccess value)? success,
    TResult? Function(EventsHistoryError value)? error,
    TResult? Function(EventsHistoryEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EventsHistoryLoading value)? loading,
    TResult Function(EventsHistorySuccess value)? success,
    TResult Function(EventsHistoryError value)? error,
    TResult Function(EventsHistoryEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EventsHistoryEmpty implements EventsHistoryState {
  const factory EventsHistoryEmpty() = _$EventsHistoryEmptyImpl;
}
