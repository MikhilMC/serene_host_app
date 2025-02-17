import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:serene_host_app/app_modules/booking_details_module/widget/details_row.dart';
import 'package:serene_host_app/app_modules/booking_details_module/widget/section_card.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/booking.dart';

class BookingDetailsScreen extends StatelessWidget {
  final Booking booking;
  const BookingDetailsScreen({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat.currency(symbol: "\$");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Details"),
        actions: [
          IconButton(
            icon: const Icon(Icons.phone),
            onPressed: () {
              // Handle contact guest action
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Contacting ${booking.guestName}")),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Guest Info
            SectionCard(
              title: "Guest Information",
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
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
                subtitleTextStyle: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Booking Info
            SectionCard(
              title: "Booking Details",
              child: Column(
                children: [
                  DetailsRow(
                    label: "Booking ID",
                    value: booking.bookingId,
                  ),
                  DetailsRow(
                    label: "Check-in",
                    value: DateFormat.yMMMd().format(booking.checkInDate),
                  ),
                  DetailsRow(
                    label: "Check-out",
                    value: DateFormat.yMMMd().format(booking.checkOutDate),
                  ),
                  DetailsRow(
                    label: "Guests",
                    value: "${booking.numGuests}",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Payment Info
            SectionCard(
              title: "Payment Details",
              child: Column(
                children: [
                  DetailsRow(
                    label: "Total Price",
                    value: currencyFormat.format(booking.totalPrice),
                  ),
                  DetailsRow(
                    label: "Amount Paid",
                    value: currencyFormat.format(booking.amountPaid),
                  ),
                  DetailsRow(
                    label: "Balance Due",
                    value: currencyFormat.format(booking.balanceDue),
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
                        backgroundColor: booking.paymentStatus == "Paid"
                            ? Colors.green
                            : Colors.orange,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.check),
                    label: const Text(
                      "Confirm",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      iconColor: Colors.white,
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Booking Confirmed",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.cancel),
                    label: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      iconColor: Colors.white,
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Booking Cancelled",
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
}
