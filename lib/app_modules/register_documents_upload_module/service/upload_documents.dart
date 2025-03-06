import 'dart:convert';
import 'dart:io';

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

    var profilePictureStream =
        http.ByteStream(documentUploadDetails.profilePicture.openRead());
    var profilePictureLength =
        await documentUploadDetails.profilePicture.length();
    var profilePictureMultipartFile = http.MultipartFile(
      'profile_picture',
      profilePictureStream,
      profilePictureLength,
      filename: documentUploadDetails.profilePicture.path.split("/").last,
    );
    request.files.add(profilePictureMultipartFile);

    var idProofStream =
        http.ByteStream(documentUploadDetails.idProof.openRead());
    var idProofLength = await documentUploadDetails.idProof.length();
    var idProofMultipartFile = http.MultipartFile(
      'id_proof',
      idProofStream,
      idProofLength,
      filename: documentUploadDetails.idProof.path.split("/").last,
    );
    request.files.add(idProofMultipartFile);

    for (var image in documentUploadDetails.images) {
      var imageStream = http.ByteStream(image.openRead());
      var imageLength = await image.length();
      var multipartFile = http.MultipartFile(
        'property_images[]', // Field name for multiple images
        imageStream,
        imageLength,
        filename: image.path.split("/").last,
      );
      request.files.add(multipartFile);
    }

    final resp = await request.send();
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(responseBody);
      return RegisterResponseModel.fromJson(decoded);
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(responseBody);
      throw Exception(
        'Failed to add product: ${errorResponse['message'] ?? 'Unknown error'}',
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
