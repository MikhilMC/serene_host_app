// To parse this JSON data, do
//
//     final userReportResponseModel = userReportResponseModelFromJson(jsonString);

import 'dart:convert';

UserReportResponseModel userReportResponseModelFromJson(String str) =>
    UserReportResponseModel.fromJson(json.decode(str));

String userReportResponseModelToJson(UserReportResponseModel data) =>
    json.encode(data.toJson());

class UserReportResponseModel {
  String status;
  String message;

  UserReportResponseModel({
    required this.status,
    required this.message,
  });

  factory UserReportResponseModel.fromJson(Map<String, dynamic> json) =>
      UserReportResponseModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
