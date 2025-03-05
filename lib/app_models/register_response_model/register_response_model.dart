// To parse this JSON data, do
//
//     final personalDetailsRegisterResponseModel = personalDetailsRegisterResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_models/host_data_model/host_data_model.dart';

part 'register_response_model.freezed.dart';
part 'register_response_model.g.dart';

RegisterResponseModel registerResponseModelFromJson(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

String registerResponseModelToJson(RegisterResponseModel data) =>
    json.encode(data.toJson());

@freezed
class RegisterResponseModel with _$RegisterResponseModel {
  const factory RegisterResponseModel({
    String? status,
    String? message,
    HostDataModel? data,
  }) = _RegisterResponseModel;

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}
