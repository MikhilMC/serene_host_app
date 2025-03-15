import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:serene_host_app/app_modules/booking_history_details_module/widget/history_details_row.dart';
import 'package:serene_host_app/app_modules/booking_history_details_module/widget/history_section_card.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/booking_history.dart';
import 'package:serene_host_app/app_modules/report_user_module/view/report_user_screen.dart';

class BookingHistoryDetailsScreen extends StatelessWidget {
  final BookingHistory booking;
  const BookingHistoryDetailsScreen({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat.currency(symbol: "\$");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Details"),
        actions: [
          IconButton(
            icon: const Icon(Icons.file_download),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Downloading Invoice...")),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Guest Info
            HistorySectionCard(
              title: "Guest Information",
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(booking.profilePicture),
                ),
                title: Text(
                  booking.guestName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("📧 ${booking.guestEmail}"),
                    Text("📞 ${booking.guestPhone}"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Booking Info
            HistorySectionCard(
              title: "Booking Details",
              child: Column(
                children: [
                  HistoryDetailsRow(
                    label: "Booking ID",
                    value: booking.bookingId,
                  ),
                  HistoryDetailsRow(
                    label: "Property",
                    value: booking.propertyName,
                  ),
                  HistoryDetailsRow(
                    label: "Check-in",
                    value: DateFormat.yMMMd().format(booking.checkInDate),
                  ),
                  HistoryDetailsRow(
                    label: "Check-out",
                    value: DateFormat.yMMMd().format(booking.checkOutDate),
                  ),
                  HistoryDetailsRow(
                    label: "Stay Duration",
                    value: "${booking.stayDuration} nights",
                  ),
                  HistoryDetailsRow(
                    label: "Guests",
                    value: "${booking.numberOfGuests}",
                  ),
                  HistoryDetailsRow(
                    label: "Booking Date",
                    value: DateFormat.yMMMd().format(booking.bookingDate),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Booking Status:",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Chip(
                        label: Text(
                          booking.bookingStatus,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: _getBookingStatusColor(
                          booking.bookingStatus,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Payment Info
            HistorySectionCard(
              title: "Payment Details",
              child: Column(
                children: [
                  HistoryDetailsRow(
                    label: "Total Price",
                    value: currencyFormat.format(booking.totalPrice),
                  ),
                  HistoryDetailsRow(
                    label: "Amount Paid",
                    value: currencyFormat.format(booking.amountPaid),
                  ),
                  HistoryDetailsRow(
                    label: "Balance Due",
                    value: currencyFormat.format(booking.balanceDue),
                  ),
                  HistoryDetailsRow(
                    label: "Payment Method",
                    value: booking.paymentMethod,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Payment Status:",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Chip(
                        label: Text(
                          booking.paymentStatus,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: _getPaymentStatusColor(
                          booking.paymentStatus,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Review Section (if available)
            if (booking.bookingStatus == "Completed" &&
                booking.reviewTitle != null)
              HistorySectionCard(
                title: "Guest Review",
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      booking.reviewTitle!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: List.generate(
                        booking.reviewRating ?? 0,
                        (index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(booking.reviewDescription!),
                  ],
                ),
              ),
            const SizedBox(height: 16),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.phone),
                    label: const Text(
                      "Contact Guest",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, iconColor: Colors.white),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Calling Guest..."),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.file_download),
                    label: const Text(
                      "Download Invoice",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      iconColor: Colors.white,
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Invoice Downloaded"),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.report),
                    label: const Text(
                      "Report User",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      iconColor: Colors.white,
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReportUserScreen(
                            bookingId: 1,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 🎨 **Get Color Based on Booking Status**
  Color _getBookingStatusColor(String status) {
    switch (status) {
      case "Completed":
        return Colors.green;
      case "Cancelled":
      case "No-Show":
        return Colors.red;
      case "Ongoing":
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  /// 🎨 **Get Color Based on Payment Status**
  Color _getPaymentStatusColor(String status) {
    switch (status) {
      case "Paid":
        return Colors.green;
      case "Pending":
        return Colors.orange;
      case "Partially Paid":
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}
