// To parse this JSON data, do
//
//     final personalDetailsRegisterResponseModel = personalDetailsRegisterResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:serene_host_app/app_modules/register_personal_information_module/model/data_model/data_model.dart';

part 'personal_details_register_response_model.freezed.dart';
part 'personal_details_register_response_model.g.dart';

PersonalDetailsRegisterResponseModel
    personalDetailsRegisterResponseModelFromJson(String str) =>
        PersonalDetailsRegisterResponseModel.fromJson(json.decode(str));

String personalDetailsRegisterResponseModelToJson(
        PersonalDetailsRegisterResponseModel data) =>
    json.encode(data.toJson());

@freezed
class PersonalDetailsRegisterResponseModel
    with _$PersonalDetailsRegisterResponseModel {
  const factory PersonalDetailsRegisterResponseModel({
    String? status,
    String? message,
    DataModel? data,
  }) = _PersonalDetailsRegisterResponseModel;

  factory PersonalDetailsRegisterResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$PersonalDetailsRegisterResponseModelFromJson(json);
}
