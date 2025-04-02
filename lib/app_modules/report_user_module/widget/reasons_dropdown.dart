// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReasonsDropdown extends StatelessWidget {
  final String? selectedReason;
  final Function(String?) onReasonSelected;
  const ReasonsDropdown({
    super.key,
    this.selectedReason,
    required this.onReasonSelected,
  });

  static const List<String> _reasons = [
    'Harassment',
    'Property Damage',
    'Non-Payment',
    'Rule Violation',
    'Other'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedReason,
      decoration: InputDecoration(
        hintText: 'Select reason',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      items: _reasons.map((String type) {
        return DropdownMenuItem<String>(
          value: type,
          child: Text(type),
        );
      }).toList(),
      onChanged: onReasonSelected,
      validator: (value) =>
          value == null ? 'Please select a report reason' : null,
    );
  }
}
