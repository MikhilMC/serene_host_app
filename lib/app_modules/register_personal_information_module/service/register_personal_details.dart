import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_modules/register_personal_information_module/class/host_personal_registration_details.dart';

import 'package:serene_host_app/app_modules/register_personal_information_module/model/personal_details_registration_response_model.dart';

Future<PersonalDetailsRegistrationResponseModel> registerPersonalDetails({
  required HostPersonalRegistrationDetails hostPersonalRegistrationDetails,
}) async {
  try {
    Map<String, dynamic> body = {
      "name": hostPersonalRegistrationDetails.fullName,
      "email": hostPersonalRegistrationDetails.email,
      "phone_number": hostPersonalRegistrationDetails.phoneNumber,
      "password": hostPersonalRegistrationDetails.password,
    };

    // Construct the URL with query parameters
    final url = Uri.parse(AppUrls.registerUrl);
    final resp = await http.post(
      url,
      body: body,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(resp.body);

      final response =
          PersonalDetailsRegistrationResponseModel.fromJson(decoded);

      return response;
    } else {
      throw Exception('Failed to load response');
    }
  } on SocketException {
    throw Exception('Failed to load response');
  } on HttpException {
    throw Exception('Failed to load response');
  } on FormatException {
    throw Exception('Failed to load response');
  } catch (e) {
    throw Exception('Failed to load response');
  }
}
