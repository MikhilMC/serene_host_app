// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:serene_host_app/app_modules/booking_details_module/view/booking_details_screen.dart';

import 'package:serene_host_app/app_modules/home_page_module/model/booking.dart';

class BookingItem extends StatelessWidget {
  final Booking booking;
  const BookingItem({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat("MMM d");

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BookingDetailsScreen(
            booking: booking,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 8.0,
        ),
        child: Card(
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Guest Name & Payment Status
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      booking.guestName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Chip(
                      label: Text(
                        booking.paymentStatus,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      avatar: Icon(
                        booking.paymentStatus == "Paid"
                            ? Icons.check_circle
                            : Icons.warning_amber_rounded,
                        color: Colors.white,
                      ),
                      backgroundColor: booking.paymentStatus == "Paid"
                          ? Colors.green
                          : Colors.orange,
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                // Check-in & Check-out Dates
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                      size: 18,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "${dateFormat.format(booking.checkInDate)} - ${dateFormat.format(booking.checkOutDate)}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                // Number of Guests
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.people,
                            color: Colors.grey,
                            size: 18,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "${booking.numGuests} Guest${booking.numGuests > 1 ? 's' : ''}",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Payment Details
                    SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.account_balance_wallet,
                            color: Colors.grey,
                            size: 18,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            booking.paymentStatus == "Paid"
                                ? "Total Amount: ₹${booking.totalPrice.toStringAsFixed(2)}"
                                : "Paid: ₹${booking.amountPaid.toStringAsFixed(2)}, Due: ₹${booking.balanceDue.toStringAsFixed(2)}",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
