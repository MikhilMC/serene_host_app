// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class AddEventDetails {
  final String title;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final List<File> images;
  AddEventDetails({
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.images,
  });
}
