import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_modules/booking_history_module/model/host_booking_history_model.dart';

class GuestInfo extends StatelessWidget {
  final HostBookingHistoryModel booking;
  const GuestInfo({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipOval(
        child: CachedNetworkImage(
          imageUrl: "${AppUrls.baseUrl}${booking.profilePicture}",
          placeholder: (context, url) =>
              const CircularProgressIndicator(strokeWidth: 2),
          errorWidget: (context, url, error) => const Icon(
            Icons.account_circle,
            size: 50,
            color: Colors.grey,
          ),
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        booking.userName,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            booking.email,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          Text(
            booking.phone,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
