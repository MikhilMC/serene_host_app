// ignore_for_file: public_member_api_docs, sort_constructors_first
class PropertyRegistrationDetails {
  final String propertyType;
  final String propertyName;
  final int maximumCapacity;
  final int numberOfRooms;
  final String address;
  final double latitude;
  final double longitude;
  final String description;
  final List<String> amenities;
  final String place;
  PropertyRegistrationDetails({
    required this.propertyType,
    required this.propertyName,
    required this.maximumCapacity,
    required this.numberOfRooms,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.description,
    required this.amenities,
    required this.place,
  });
}
