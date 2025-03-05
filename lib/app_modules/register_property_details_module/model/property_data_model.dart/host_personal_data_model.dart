// To parse this JSON data, do
//
//     final hostPersonalDataModel = hostPersonalDataModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'host_personal_data_model.freezed.dart';
part 'host_personal_data_model.g.dart';

HostPersonalDataModel hostPersonalDataModelFromJson(String str) =>
    HostPersonalDataModel.fromJson(json.decode(str));

String hostPersonalDataModelToJson(HostPersonalDataModel data) =>
    json.encode(data.toJson());

@freezed
class HostPersonalDataModel with _$HostPersonalDataModel {
  const factory HostPersonalDataModel({
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
  }) = _HostPersonalDataModel;

  factory HostPersonalDataModel.fromJson(Map<String, dynamic> json) =>
      _$HostPersonalDataModelFromJson(json);
}
