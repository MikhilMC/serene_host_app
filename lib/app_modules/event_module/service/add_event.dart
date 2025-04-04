import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_modules/event_module/class/add_event_details.dart';
import 'package:serene_host_app/app_modules/event_module/model/add_event_response_model/add_event_response_model.dart';
import 'package:serene_host_app/app_utils/app_localstorage.dart';

Future<AddEventResponseModel> addEvent({
  required AddEventDetails addEventDetails,
}) async {
  try {
    final int hostId = await AppLocalstorage.getUserId();
    // Construct the URL with query parameters
    final url = Uri.parse(AppUrls.addEventUrl);

    var request = http.MultipartRequest("POST", url);

    request.fields['title'] = addEventDetails.title;
    request.fields['description'] = addEventDetails.description;
    request.fields['start_date'] =
        "${addEventDetails.startDate.year}-${addEventDetails.startDate.month.toString().padLeft(2, '0')}-${addEventDetails.startDate.day.toString().padLeft(2, '0')}";
    request.fields['end_date'] =
        "${addEventDetails.endDate.year}-${addEventDetails.endDate.month.toString().padLeft(2, '0')}-${addEventDetails.endDate.day.toString().padLeft(2, '0')}";
    request.fields['host'] = hostId.toString();

    for (var image in addEventDetails.images) {
      var imageStream = http.ByteStream(image.openRead());
      var imageLength = await image.length();
      var multipartFile = http.MultipartFile(
        'images[]', // Field name for multiple images
        imageStream,
        imageLength,
        filename: image.path.split("/").last,
      );
      request.files.add(multipartFile);
    }

    final resp = await request.send();
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(responseBody);
      return AddEventResponseModel.fromJson(decoded);
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(responseBody);
      throw Exception(
        'Failed to add event: ${errorResponse['message'] ?? 'Unknown error'}',
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
