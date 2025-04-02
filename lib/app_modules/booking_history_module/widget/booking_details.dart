// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:serene_host_app/app_modules/booking_history_module/model/host_booking_history_model.dart';

class BookingDetails extends StatelessWidget {
  final HostBookingHistoryModel booking;
  const BookingDetails({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    final int duration = booking.endDate.difference(booking.startDate).inDays;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Check-in: ${_formatDateTime(booking.startDate)}",
          style: const TextStyle(fontSize: 14),
        ),
        Text(
          "Check-out: ${_formatDateTime(booking.endDate)}",
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 4),
        Text(
          "Stay Duration: $duration ${duration > 1 ? "nights" : "night"} • Guests: ${booking.noOfGuests}",
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 4),
        Text(
          "Total Price: ₹${booking.totalCost}",
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          "Platform Fee: ₹${booking.platformFee}",
          style: const TextStyle(fontSize: 14, color: Colors.green),
        ),
        Text(
          "Refund Amount: ₹${booking.refundAmount}",
          style: const TextStyle(fontSize: 14, color: Colors.red),
        ),
        const SizedBox(height: 4),
        Text(
          "Payment Status: ${booking.paymentStatus} (${_formatPaymentMethod(booking.paymentMethod)})",
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  /// ✅ **Date Formatting Helper**
  String _formatDateTime(DateTime date) {
    return DateFormat('dd MMM yyyy, hh:mm a').format(date);
  }

  String _formatPaymentMethod(String paymentMethod) {
    switch (paymentMethod) {
      case "cash_on_arrival":
        return "Cash on Arrival";
      case "upi":
        return "UPI";
      default:
        return "Card";
    }
  }
}
