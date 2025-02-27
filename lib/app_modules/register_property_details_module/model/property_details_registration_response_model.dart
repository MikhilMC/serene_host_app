// To parse this JSON data, do
//
//     final propertyDetailsRegistrationResponseModel = propertyDetailsRegistrationResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'property_details_registration_response_model.freezed.dart';
part 'property_details_registration_response_model.g.dart';

PropertyDetailsRegistrationResponseModel
    propertyDetailsRegistrationResponseModelFromJson(String str) =>
        PropertyDetailsRegistrationResponseModel.fromJson(json.decode(str));

String propertyDetailsRegistrationResponseModelToJson(
        PropertyDetailsRegistrationResponseModel data) =>
    json.encode(data.toJson());

@freezed
class PropertyDetailsRegistrationResponseModel
    with _$PropertyDetailsRegistrationResponseModel {
  const factory PropertyDetailsRegistrationResponseModel({
    int? id,
    List<dynamic>? propertyImages,
    String? name,
    String? email,
    String? phoneNumber,
    String? password,
    String? propertyType,
    String? address,
    dynamic place,
    String? latitude,
    String? longitude,
    String? description,
    String? amenities,
    dynamic profilePicture,
    dynamic idProof,
    dynamic rate,
    String? status,
  }) = _PropertyDetailsRegistrationResponseModel;

  factory PropertyDetailsRegistrationResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$PropertyDetailsRegistrationResponseModelFromJson(json);
}
