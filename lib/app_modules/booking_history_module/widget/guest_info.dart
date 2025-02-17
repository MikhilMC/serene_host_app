// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:serene_host_app/app_modules/booking_history_module/widget/status_badge.dart';

import 'package:serene_host_app/app_modules/home_page_module/model/booking_history.dart';

class GuestInfo extends StatelessWidget {
  final BookingHistory booking;
  const GuestInfo({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: CachedNetworkImage(
            imageUrl: booking.profilePicture,
            placeholder: (context, url) =>
                const CircularProgressIndicator(strokeWidth: 2),
            errorWidget: (context, url, error) =>
                const Icon(Icons.account_circle, size: 50, color: Colors.grey),
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                booking.guestName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                booking.guestEmail,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                booking.guestPhone,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
        StatusBadge(status: booking.bookingStatus),
      ],
    );
  }
}
