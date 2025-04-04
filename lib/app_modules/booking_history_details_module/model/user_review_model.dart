// To parse this JSON data, do
//
//     final userReviewModel = userReviewModelFromJson(jsonString);

import 'dart:convert';

List<UserReviewModel> userReviewModelFromJson(String str) =>
    List<UserReviewModel>.from(
        json.decode(str).map((x) => UserReviewModel.fromJson(x)));

String userReviewModelToJson(List<UserReviewModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserReviewModel {
  int id;
  int booking;
  int user;
  double starRating;
  String feedback;
  DateTime createdAt;
  List<ImageModel> images;
  String username;
  String profilePicture;

  UserReviewModel({
    required this.id,
    required this.booking,
    required this.user,
    required this.starRating,
    required this.feedback,
    required this.createdAt,
    required this.images,
    required this.username,
    required this.profilePicture,
  });

  factory UserReviewModel.fromJson(Map<String, dynamic> json) =>
      UserReviewModel(
        id: json["id"],
        booking: json["booking"],
        user: json["user"],
        starRating: json["star_rating"]?.toDouble(),
        feedback: json["feedback"],
        createdAt: DateTime.parse(json["created_at"]),
        images: List<ImageModel>.from(
            json["images"].map((x) => ImageModel.fromJson(x))),
        username: json["username"],
        profilePicture: json["profile_picture"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "booking": booking,
        "user": user,
        "star_rating": starRating,
        "feedback": feedback,
        "created_at": createdAt.toIso8601String(),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "username": username,
        "profile_picture": profilePicture,
      };
}

class ImageModel {
  int id;
  String image;

  ImageModel({
    required this.id,
    required this.image,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };
}
