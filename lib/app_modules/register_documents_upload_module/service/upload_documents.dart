import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_models/register_response_model/register_response_model.dart';
import 'package:serene_host_app/app_modules/register_documents_upload_module/class/document_upload_details.dart';

Future<RegisterResponseModel> uploadDocuments({
  required int hostId,
  required DocumentUploadDetails documentUploadDetails,
}) async {
  try {
    // Construct the URL with query parameters
    final url = Uri.parse("${AppUrls.hostUpdateUrl}$hostId/");

    var request = http.MultipartRequest("PATCH", url);

    request.headers.addAll({
      'Content-Type': 'multipart/form-data',
    });

    // Add profile picture
    request.files.add(
      await http.MultipartFile.fromPath(
        'profile_picture',
        documentUploadDetails.profilePicture.path,
      ),
    );

    // Add ID proof
    request.files.add(
      await http.MultipartFile.fromPath(
        'id_proof',
        documentUploadDetails.idProof.path,
      ),
    );

    // Add multiple property images (without `[]` in field name)
    if (kDebugMode) {
      print(documentUploadDetails.propertyImages);
    }
    for (var image in documentUploadDetails.propertyImages) {
      request.files.add(
        await http.MultipartFile.fromPath(
          'property_images', // No `[]`
          image.path,
        ),
      );
    }

    final resp = await request.send();
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(responseBody);
      return RegisterResponseModel.fromJson(decoded);
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(responseBody);
      throw Exception(
        'Failed to upload images: ${errorResponse['message'] ?? 'Unknown error'}',
      );
    }
  } on SocketException {
    throw Exception('No Internet connection');
  } on HttpException {
    throw Exception('Server error');
  } on FormatException {
    throw Exception('Bad response format');
  } catch (e) {
    throw Exception('Unexpected error: ${e.toString()}');
  }
}
