// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_details_register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalDetailsRegisterResponseModelImpl
    _$$PersonalDetailsRegisterResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$PersonalDetailsRegisterResponseModelImpl(
          status: json['status'] as String?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : DataModel.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PersonalDetailsRegisterResponseModelImplToJson(
        _$PersonalDetailsRegisterResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
