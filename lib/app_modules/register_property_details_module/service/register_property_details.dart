import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/class/property_registration_details.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/model/property_details_registration_response_model/property_details_registration_response_model.dart';

Future<PropertyDetailsRegistrationResponseModel> registerPropertyDetails({
  required int hostId,
  required PropertyRegistrationDetails propertyRegistrationDetails,
}) async {
  try {
    Map<String, dynamic> params = {
      "id": hostId.toString(),
    };

    Map<String, dynamic> body = {
      "property_type": propertyRegistrationDetails.propertyType,
      "address": propertyRegistrationDetails.address,
      "latitude": propertyRegistrationDetails.latitude.toString(),
      "longitude": propertyRegistrationDetails.longitude.toString(),
      "description": propertyRegistrationDetails.description,
      "amenities": propertyRegistrationDetails.amenities.join(", "),
      "place": propertyRegistrationDetails.place
    };

    // Construct the URL with query parameters
    final url = Uri.parse(AppUrls.registerUrl).replace(
      queryParameters: params,
    );

    final resp = await http.post(
      url,
      body: body,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(resp.body);

      final response =
          PropertyDetailsRegistrationResponseModel.fromJson(decoded);

      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
      throw Exception(
        'Failed to register: ${errorResponse['message'] ?? 'Unknown error'}',
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
