// To parse this JSON data, do
//
//     final bookingDetailsModel = bookingDetailsModelFromJson(jsonString);

import 'dart:convert';

BookingDetailsModel bookingDetailsModelFromJson(String str) =>
    BookingDetailsModel.fromJson(json.decode(str));

String bookingDetailsModelToJson(BookingDetailsModel data) =>
    json.encode(data.toJson());

class BookingDetailsModel {
  int id;
  String userName;
  String userEmail;
  String userPhone;
  String profilePicture;
  DateTime startDate;
  DateTime endDate;
  int noOfGuests;
  String totalCost;
  String refundAmount;
  String paymentMethod;
  String paymentStatus;
  String bookingStatus;
  DateTime bookingDate;
  String platformFee;
  DateTime updatedDate;
  List<int> paymentIds;
  bool reviewSubmitted;
  bool reportSubmitted;
  bool hostReportSubmitted;
  int user;
  int host;

  BookingDetailsModel({
    required this.id,
    required this.userName,
    required this.userEmail,
    required this.userPhone,
    required this.profilePicture,
    required this.startDate,
    required this.endDate,
    required this.noOfGuests,
    required this.totalCost,
    required this.refundAmount,
    required this.paymentMethod,
    required this.paymentStatus,
    required this.bookingStatus,
    required this.bookingDate,
    required this.platformFee,
    required this.updatedDate,
    required this.paymentIds,
    required this.reviewSubmitted,
    required this.reportSubmitted,
    required this.hostReportSubmitted,
    required this.user,
    required this.host,
  });

  factory BookingDetailsModel.fromJson(Map<String, dynamic> json) =>
      BookingDetailsModel(
        id: json["id"],
        userName: json["user_name"],
        userEmail: json["user_email"],
        userPhone: json["user_phone"],
        profilePicture: json["profile_picture"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        noOfGuests: json["no_of_guests"],
        totalCost: json["total_cost"],
        refundAmount: json["refund_amount"],
        paymentMethod: json["payment_method"],
        paymentStatus: json["payment_status"],
        bookingStatus: json["booking_status"],
        bookingDate: DateTime.parse(json["booking_date"]),
        platformFee: json["platform_fee"],
        updatedDate: DateTime.parse(json["updated_date"]),
        paymentIds: List<int>.from(json["payment_ids"].map((x) => x)),
        reviewSubmitted: json["review_submitted"],
        reportSubmitted: json["report_submitted"],
        hostReportSubmitted: json["host_report_submitted"],
        user: json["user"],
        host: json["host"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_name": userName,
        "user_email": userEmail,
        "user_phone": userPhone,
        "profile_picture": profilePicture,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "no_of_guests": noOfGuests,
        "total_cost": totalCost,
        "refund_amount": refundAmount,
        "payment_method": paymentMethod,
        "payment_status": paymentStatus,
        "booking_status": bookingStatus,
        "booking_date": bookingDate.toIso8601String(),
        "platform_fee": platformFee,
        "updated_date": updatedDate.toIso8601String(),
        "payment_ids": List<dynamic>.from(paymentIds.map((x) => x)),
        "review_submitted": reviewSubmitted,
        "report_submitted": reportSubmitted,
        "host_report_submitted": hostReportSubmitted,
        "user": user,
        "host": host,
      };
}
