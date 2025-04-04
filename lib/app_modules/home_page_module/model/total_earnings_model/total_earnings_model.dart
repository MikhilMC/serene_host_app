// To parse this JSON data, do
//
//     final totalEarningsModel = totalEarningsModelFromJson(jsonString);

import 'dart:convert';

TotalEarningsModel totalEarningsModelFromJson(String str) =>
    TotalEarningsModel.fromJson(json.decode(str));

String totalEarningsModelToJson(TotalEarningsModel data) =>
    json.encode(data.toJson());

class TotalEarningsModel {
  String status;
  String host;
  double totalEarnings;

  TotalEarningsModel({
    required this.status,
    required this.host,
    required this.totalEarnings,
  });

  factory TotalEarningsModel.fromJson(Map<String, dynamic> json) =>
      TotalEarningsModel(
        status: json["status"],
        host: json["host"],
        totalEarnings: json["total_earnings"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "host": host,
        "total_earnings": totalEarnings,
      };
}
