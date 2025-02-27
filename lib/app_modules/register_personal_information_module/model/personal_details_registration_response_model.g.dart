// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_details_registration_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalDetailsRegistrationResponseModelImpl
    _$$PersonalDetailsRegistrationResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$PersonalDetailsRegistrationResponseModelImpl(
          id: (json['id'] as num?)?.toInt(),
          propertyImages: (json['propertyImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          name: json['name'] as String?,
          email: json['email'] as String?,
          phoneNumber: json['phoneNumber'] as String?,
          password: json['password'] as String?,
          propertyType: json['propertyType'] as String?,
          address: json['address'] as String?,
          place: json['place'] as String?,
          latitude: json['latitude'] as String?,
          longitude: json['longitude'] as String?,
          description: json['description'] as String?,
          amenities: json['amenities'] as String?,
          profilePicture: json['profilePicture'] as String?,
          idProof: json['idProof'] as String?,
          rate: json['rate'] as String?,
          status: json['status'] as String?,
        );

Map<String, dynamic> _$$PersonalDetailsRegistrationResponseModelImplToJson(
        _$PersonalDetailsRegistrationResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'propertyImages': instance.propertyImages,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'propertyType': instance.propertyType,
      'address': instance.address,
      'place': instance.place,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'description': instance.description,
      'amenities': instance.amenities,
      'profilePicture': instance.profilePicture,
      'idProof': instance.idProof,
      'rate': instance.rate,
      'status': instance.status,
    };
