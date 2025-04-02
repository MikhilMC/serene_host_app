import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:serene_host_app/app_modules/booking_history_module/model/host_booking_history_model.dart';
import 'package:serene_host_app/app_modules/booking_history_module/widget/booking_detail_item.dart';
import 'package:serene_host_app/app_modules/booking_history_module/widget/payment_status_widget.dart';

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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BookingDetailItem(
              label: "Check-in",
              value: _formatDateTime(booking.startDate),
            ),
            BookingDetailItem(
              label: "Check-out",
              value: _formatDateTime(booking.endDate),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BookingDetailItem(
              label: "Duration",
              value: "$duration ${duration > 1 ? "nights" : "night"}",
            ),
            BookingDetailItem(
              label: "Guests",
              value: "${booking.noOfGuests}",
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BookingDetailItem(
              label: "Total Price",
              value: "₹${booking.totalCost}",
              isBold: true,
            ),
            BookingDetailItem(
              label: "Platform Fee",
              value: "₹${booking.platformFee}",
              color: Colors.green,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BookingDetailItem(
              label: "Refund",
              value: "₹${booking.refundAmount}",
              color: Colors.red,
            ),
            PaymentStatusWidget(
              paymentMethod: booking.paymentMethod,
              paymentStatus: booking.paymentStatus,
            ),
          ],
        ),
      ],
    );
  }

  /// ✅ **Date Formatting Helper**
  String _formatDateTime(DateTime date) {
    return DateFormat('dd MMM yyyy, hh:mm a').format(date);
  }
}
