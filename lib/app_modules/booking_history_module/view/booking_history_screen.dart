import 'package:flutter/material.dart';
import 'package:serene_host_app/app_modules/booking_history_module/widget/booking_card.dart';

import 'package:serene_host_app/app_modules/home_page_module/model/booking_history.dart';

class BookingHistoryScreen extends StatelessWidget {
  final List<BookingHistory> bookingHistory;

  const BookingHistoryScreen({
    super.key,
    required this.bookingHistory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/logo_dark.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              "Booking History",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: bookingHistory.isEmpty
          ? const Center(
              child: Text(
                "No bookings found",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: bookingHistory.length,
              itemBuilder: (context, index) {
                final booking = bookingHistory[index];
                return BookingCard(booking: booking);
              },
            ),
    );
  }
}
