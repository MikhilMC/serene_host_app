import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'personal_details_registration_response_model.freezed.dart';
part 'personal_details_registration_response_model.g.dart';

PersonalDetailsRegistrationResponseModel
    personalDetailsRegistrationResponseModelFromJson(String str) =>
        PersonalDetailsRegistrationResponseModel.fromJson(json.decode(str));

String personalDetailsRegistrationResponseModelToJson(
        PersonalDetailsRegistrationResponseModel data) =>
    json.encode(data.toJson());

@freezed
class PersonalDetailsRegistrationResponseModel
    with _$PersonalDetailsRegistrationResponseModel {
  const factory PersonalDetailsRegistrationResponseModel({
    int? id,
    List<String>? propertyImages,
    String? name,
    String? email,
    String? phoneNumber,
    String? password,
    String? propertyType,
    String? address,
    String? place,
    String? latitude,
    String? longitude,
    String? description,
    String? amenities,
    String? profilePicture,
    String? idProof,
    String? rate,
    String? status,
  }) = _PersonalDetailsRegistrationResponseModel;

  factory PersonalDetailsRegistrationResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$PersonalDetailsRegistrationResponseModelFromJson(json);
}
