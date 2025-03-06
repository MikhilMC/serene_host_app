// To parse this JSON data, do
//
//     final hostDataModel = hostDataModelFromJson(jsonString);

import 'dart:convert';

HostDataModel hostDataModelFromJson(String str) =>
    HostDataModel.fromJson(json.decode(str));

String hostDataModelToJson(HostDataModel data) => json.encode(data.toJson());

class HostDataModel {
  int? id;
  List<String>? propertyImages;
  String? profilePicture;
  String? idProof;
  String? name;
  String? email;
  String? phoneNumber;
  String? password;
  String? propertyType;
  String? address;
  String? place;
  String? latitude;
  String? longitude;
  String? description;
  String? amenities;
  String? rate;
  String? status;

  HostDataModel({
    this.id,
    this.propertyImages,
    this.profilePicture,
    this.idProof,
    this.name,
    this.email,
    this.phoneNumber,
    this.password,
    this.propertyType,
    this.address,
    this.place,
    this.latitude,
    this.longitude,
    this.description,
    this.amenities,
    this.rate,
    this.status,
  });

  factory HostDataModel.fromJson(Map<String, dynamic> json) => HostDataModel(
        id: json["id"],
        propertyImages: json["property_images"] == null
            ? []
            : List<String>.from(json["property_images"]!.map((x) => x)),
        profilePicture: json["profile_picture"],
        idProof: json["id_proof"],
        name: json["name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        password: json["password"],
        propertyType: json["property_type"],
        address: json["address"],
        place: json["place"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        description: json["description"],
        amenities: json["amenities"],
        rate: json["rate"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "property_images": propertyImages == null
            ? []
            : List<dynamic>.from(propertyImages!.map((x) => x)),
        "profile_picture": profilePicture,
        "id_proof": idProof,
        "name": name,
        "email": email,
        "phone_number": phoneNumber,
        "password": password,
        "property_type": propertyType,
        "address": address,
        "place": place,
        "latitude": latitude,
        "longitude": longitude,
        "description": description,
        "amenities": amenities,
        "rate": rate,
        "status": status,
      };
}
