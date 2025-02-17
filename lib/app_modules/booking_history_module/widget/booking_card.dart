// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:serene_host_app/app_modules/booking_history_details_module/view/booking_history_details_screen.dart';
import 'package:serene_host_app/app_modules/booking_history_module/widget/booking_details.dart';
import 'package:serene_host_app/app_modules/booking_history_module/widget/guest_info.dart';

import 'package:serene_host_app/app_modules/home_page_module/model/booking_history.dart';

class BookingCard extends StatelessWidget {
  final BookingHistory booking;
  const BookingCard({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BookingHistoryDetailsScreen(
            booking: booking,
          ),
        ),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 3,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GuestInfo(booking: booking),
              const Divider(),
              BookingDetails(booking: booking),
            ],
          ),
        ),
      ),
    );
  }
}
