import 'package:flutter/material.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/booking.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/booking_item.dart';

class CurrentBookingsWidget extends StatelessWidget {
  final List<Booking> bookings;
  const CurrentBookingsWidget({super.key, required this.bookings});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.005),
        child: Column(
          children: [
            ...bookings.map(
              (booking) => BookingItem(
                booking: booking,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
