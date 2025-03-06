// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      message: json['message'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
    };
