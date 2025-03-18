// To parse this JSON data, do
//
//     final eventDataModel = eventDataModelFromJson(jsonString);

import 'dart:convert';

EventDataModel eventDataModelFromJson(String str) =>
    EventDataModel.fromJson(json.decode(str));

String eventDataModelToJson(EventDataModel data) => json.encode(data.toJson());

class EventDataModel {
  int id;
  List<Image> images;
  String title;
  String description;
  DateTime startDate;
  DateTime endDate;
  int host;

  EventDataModel({
    required this.id,
    required this.images,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.host,
  });

  factory EventDataModel.fromJson(Map<String, dynamic> json) => EventDataModel(
        id: json["id"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        title: json["title"],
        description: json["description"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        host: json["host"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "title": title,
        "description": description,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "host": host,
      };
}

class Image {
  int id;
  String image;

  Image({
    required this.id,
    required this.image,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };
}
