// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'host_data_model.freezed.dart';
part 'host_data_model.g.dart';

HostDataModel hostDataModelFromJson(String str) =>
    HostDataModel.fromJson(json.decode(str));

String hostDataModelToJson(HostDataModel data) => json.encode(data.toJson());

@freezed
class HostDataModel with _$HostDataModel {
  const factory HostDataModel({
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
  }) = _HostDataModel;

  factory HostDataModel.fromJson(Map<String, dynamic> json) =>
      _$HostDataModelFromJson(json);
}
