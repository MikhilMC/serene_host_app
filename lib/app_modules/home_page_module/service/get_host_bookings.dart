import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/host_booking_model/host_booking_model.dart';
import 'package:serene_host_app/app_utils/app_localstorage.dart';

Future<List<HostBookingModel>> getCurrentHostBookings() async {
  try {
    int userId = await AppLocalstorage.getUserId();
    Map<String, dynamic> params = {
      "id": userId.toString(),
    };

    final url = Uri.parse(AppUrls.getCurrentHostBookingsUrl)
        .replace(queryParameters: params);

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 200) {
      final List<dynamic> decoded = jsonDecode(resp.body);
      final response =
          decoded.map((item) => HostBookingModel.fromJson(item)).toList();

      response.sort((a, b) => b.startDate.compareTo(a.startDate));

      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
      throw Exception(
        '${errorResponse['message'] ?? 'Unknown error'}',
      );
    }
  } on SocketException {
    throw Exception('Server error');
  } on HttpException {
    throw Exception('Something went wrong');
  } on FormatException {
    throw Exception('Bad request');
  } catch (e) {
    throw Exception(e.toString());
  }
}
