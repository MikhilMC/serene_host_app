// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class DocumentUploadDetails {
  final File profilePicture;
  final File idProof;
  final List<File> propertyImages;
  DocumentUploadDetails({
    required this.profilePicture,
    required this.idProof,
    required this.propertyImages,
  });
}
