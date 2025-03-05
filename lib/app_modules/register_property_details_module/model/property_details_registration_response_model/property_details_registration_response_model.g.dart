// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_details_registration_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyDetailsRegistrationResponseModelImpl
    _$$PropertyDetailsRegistrationResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$PropertyDetailsRegistrationResponseModelImpl(
          status: json['status'] as String?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : HostPersonalDataModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PropertyDetailsRegistrationResponseModelImplToJson(
        _$PropertyDetailsRegistrationResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
