// To parse this JSON data, do
//
//     final addEventResponseModel = addEventResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:serene_host_app/app_modules/event_module/model/event_data_model/event_data_model.dart';

AddEventResponseModel addEventResponseModelFromJson(String str) =>
    AddEventResponseModel.fromJson(json.decode(str));

String addEventResponseModelToJson(AddEventResponseModel data) =>
    json.encode(data.toJson());

class AddEventResponseModel {
  String status;
  String message;
  EventDataModel data;

  AddEventResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory AddEventResponseModel.fromJson(Map<String, dynamic> json) =>
      AddEventResponseModel(
        status: json["status"],
        message: json["message"],
        data: EventDataModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}
