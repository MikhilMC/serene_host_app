import 'package:flutter/material.dart';

class AmenitiesSelection extends StatelessWidget {
  static const List<String> amenities = [
    "WiFi",
    "Parking",
    "Air Conditioning",
    "Swimming Pool",
    "Gym",
    "TV",
    "Kitchen",
    "Washer"
  ];

  final List<String> selectedAmenities;
  final Function(String) onAmenityToggle;

  const AmenitiesSelection({
    super.key,
    required this.selectedAmenities,
    required this.onAmenityToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.builder(
        shrinkWrap: true, // Add this line
        physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
        itemCount: amenities.length,
        itemBuilder: (context, index) {
          String amenity = amenities[index];
          return CheckboxListTile(
            title: Text(amenity),
            value: selectedAmenities.contains(amenity),
            onChanged: (bool? value) {
              onAmenityToggle(amenity);
            },
          );
        },
      ),
    );
  }
}
