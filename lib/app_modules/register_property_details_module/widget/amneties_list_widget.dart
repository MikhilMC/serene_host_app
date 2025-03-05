// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AmnetiesListWidget extends StatelessWidget {
  final List<String> selectedAmenities;
  final Function(String) onToggleAmnety;
  const AmnetiesListWidget({
    super.key,
    required this.selectedAmenities,
    required this.onToggleAmnety,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: selectedAmenities.map((amenity) {
        return Chip(
          label: Text(amenity),
          deleteIcon: Icon(Icons.close),
          onDeleted: () {
            onToggleAmnety(
              amenity,
            ); // Remove the amenity when clicked
          },
        );
      }).toList(),
    );
  }
}
