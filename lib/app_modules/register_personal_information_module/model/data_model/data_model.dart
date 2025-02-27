// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
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
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
