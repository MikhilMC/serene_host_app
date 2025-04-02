import 'package:flutter/material.dart';

class PropertyTypeDropdown extends StatelessWidget {
  final String? selectedPropertyType;
  final Function(String?) onTypeSelected;

  const PropertyTypeDropdown({
    required this.selectedPropertyType,
    required this.onTypeSelected,
    super.key,
  });

  static const List<String> _propertyTypes = [
    'Apartment',
    'House',
    'Villa',
    'Cabin',
    'Cottage',
    'Loft',
    'Bungalow',
    'Treehouse',
    'Tiny Home',
    'Yurt',
    'Dome',
    'Boat',
    'Campsite',
    'Castle',
    'Lighthouse'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedPropertyType,
      decoration: InputDecoration(
        labelText: "Property Type",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      items: _propertyTypes.map((String type) {
        return DropdownMenuItem<String>(
          value: type,
          child: Text(type),
        );
      }).toList(),
      onChanged: onTypeSelected,
      validator: (value) {
        if (value == null) {
          return 'Please select a property type';
        }
        return null;
      },
    );
  }
}
