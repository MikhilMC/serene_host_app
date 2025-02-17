// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:serene_host_app/app_modules/home_page_module/model/booking_history.dart';

class BookingDetails extends StatelessWidget {
  final BookingHistory booking;
  const BookingDetails({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          booking.propertyName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          "Check-in: ${_formatDateTime(booking.checkInDate)}",
          style: const TextStyle(fontSize: 14),
        ),
        Text(
          "Check-out: ${_formatDateTime(booking.checkOutDate)}",
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 4),
        Text(
          "Stay Duration: ${booking.stayDuration} nights • Guests: ${booking.numberOfGuests}",
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 4),
        Text(
          "Total Price: \$${booking.totalPrice.toStringAsFixed(2)}",
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          "Amount Paid: \$${booking.amountPaid.toStringAsFixed(2)}",
          style: const TextStyle(fontSize: 14, color: Colors.green),
        ),
        Text(
          "Balance Due: \$${booking.balanceDue.toStringAsFixed(2)}",
          style: const TextStyle(fontSize: 14, color: Colors.red),
        ),
        const SizedBox(height: 4),
        Text(
          "Payment Status: ${booking.paymentStatus} (${booking.paymentMethod})",
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  /// ✅ **Date Formatting Helper**
  String _formatDateTime(DateTime date) {
    return DateFormat('dd MMM yyyy, hh:mm a').format(date);
  }
}
