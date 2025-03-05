// To parse this JSON data, do
//
//     final propertyDetailsRegistrationResponseModel = propertyDetailsRegistrationResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:serene_host_app/app_modules/register_property_details_module/model/property_data_model.dart/host_personal_data_model.dart';

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
    String? status,
    String? message,
    HostPersonalDataModel? data,
  }) = _PropertyDetailsRegistrationResponseModel;

  factory PropertyDetailsRegistrationResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$PropertyDetailsRegistrationResponseModelFromJson(json);
}
