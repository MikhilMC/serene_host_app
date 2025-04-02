import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:serene_host_app/app_constants/app_urls.dart';

import 'package:serene_host_app/app_modules/report_user_module/class/user_report_details.dart';
import 'package:serene_host_app/app_modules/report_user_module/model/user_report_response_model.dart';

Future<UserReportResponseModel> reportUser({
  required UserReportDetails userReportDetails,
}) async {
  try {
    var request = http.MultipartRequest(
      "POST",
      Uri.parse(AppUrls.reportUserUrl),
    );

    request.fields['booking'] = userReportDetails.bookingId.toString();
    request.fields['title'] = userReportDetails.title;
    request.fields['description'] = userReportDetails.description;

    if (userReportDetails.images != null) {
      for (var image in userReportDetails.images!) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'images',
            image.path,
          ),
        );
      }
    }

    // Send request
    final resp = await request.send();

    // Convert the response stream to a string
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(responseBody);
      final UserReportResponseModel response =
          UserReportResponseModel.fromJson(decoded);
      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(responseBody);
      throw Exception(
        errorResponse['message'] ?? 'Unknown error',
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
