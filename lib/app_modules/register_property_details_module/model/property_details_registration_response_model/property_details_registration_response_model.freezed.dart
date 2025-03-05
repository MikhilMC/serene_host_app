// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_details_registration_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyDetailsRegistrationResponseModel
    _$PropertyDetailsRegistrationResponseModelFromJson(
        Map<String, dynamic> json) {
  return _PropertyDetailsRegistrationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyDetailsRegistrationResponseModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HostPersonalDataModel? get data => throw _privateConstructorUsedError;

  /// Serializes this PropertyDetailsRegistrationResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyDetailsRegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyDetailsRegistrationResponseModelCopyWith<
          PropertyDetailsRegistrationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyDetailsRegistrationResponseModelCopyWith<$Res> {
  factory $PropertyDetailsRegistrationResponseModelCopyWith(
          PropertyDetailsRegistrationResponseModel value,
          $Res Function(PropertyDetailsRegistrationResponseModel) then) =
      _$PropertyDetailsRegistrationResponseModelCopyWithImpl<$Res,
          PropertyDetailsRegistrationResponseModel>;
  @useResult
  $Res call({String? status, String? message, HostPersonalDataModel? data});

  $HostPersonalDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PropertyDetailsRegistrationResponseModelCopyWithImpl<$Res,
        $Val extends PropertyDetailsRegistrationResponseModel>
    implements $PropertyDetailsRegistrationResponseModelCopyWith<$Res> {
  _$PropertyDetailsRegistrationResponseModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyDetailsRegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HostPersonalDataModel?,
    ) as $Val);
  }

  /// Create a copy of PropertyDetailsRegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HostPersonalDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HostPersonalDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyDetailsRegistrationResponseModelImplCopyWith<$Res>
    implements $PropertyDetailsRegistrationResponseModelCopyWith<$Res> {
  factory _$$PropertyDetailsRegistrationResponseModelImplCopyWith(
          _$PropertyDetailsRegistrationResponseModelImpl value,
          $Res Function(_$PropertyDetailsRegistrationResponseModelImpl) then) =
      __$$PropertyDetailsRegistrationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, HostPersonalDataModel? data});

  @override
  $HostPersonalDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PropertyDetailsRegistrationResponseModelImplCopyWithImpl<$Res>
    extends _$PropertyDetailsRegistrationResponseModelCopyWithImpl<$Res,
        _$PropertyDetailsRegistrationResponseModelImpl>
    implements _$$PropertyDetailsRegistrationResponseModelImplCopyWith<$Res> {
  __$$PropertyDetailsRegistrationResponseModelImplCopyWithImpl(
      _$PropertyDetailsRegistrationResponseModelImpl _value,
      $Res Function(_$PropertyDetailsRegistrationResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyDetailsRegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PropertyDetailsRegistrationResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HostPersonalDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyDetailsRegistrationResponseModelImpl
    implements _PropertyDetailsRegistrationResponseModel {
  const _$PropertyDetailsRegistrationResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$PropertyDetailsRegistrationResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PropertyDetailsRegistrationResponseModelImplFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final HostPersonalDataModel? data;

  @override
  String toString() {
    return 'PropertyDetailsRegistrationResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyDetailsRegistrationResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of PropertyDetailsRegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyDetailsRegistrationResponseModelImplCopyWith<
          _$PropertyDetailsRegistrationResponseModelImpl>
      get copyWith =>
          __$$PropertyDetailsRegistrationResponseModelImplCopyWithImpl<
              _$PropertyDetailsRegistrationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyDetailsRegistrationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyDetailsRegistrationResponseModel
    implements PropertyDetailsRegistrationResponseModel {
  const factory _PropertyDetailsRegistrationResponseModel(
          {final String? status,
          final String? message,
          final HostPersonalDataModel? data}) =
      _$PropertyDetailsRegistrationResponseModelImpl;

  factory _PropertyDetailsRegistrationResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$PropertyDetailsRegistrationResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  HostPersonalDataModel? get data;

  /// Create a copy of PropertyDetailsRegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyDetailsRegistrationResponseModelImplCopyWith<
          _$PropertyDetailsRegistrationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
