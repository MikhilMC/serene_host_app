// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:serene_host_app/app_modules/home_page_module/model/booking.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/booking_item.dart';

class BookingAccordion extends StatelessWidget {
  const BookingAccordion({
    super.key,
    required this.title,
    required this.bookings,
    required this.color,
    required this.isExpanded,
    required this.onExpansionChanged,
  });
  final String title;
  final List<Booking> bookings;
  final Color color;
  final bool isExpanded;
  final ValueChanged<bool> onExpansionChanged;

  @override
  Widget build(BuildContext context) {
    if (bookings.isEmpty) return const SizedBox(); // Hide if no bookings

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        key: PageStorageKey<String>(title), // Ensures proper state management
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: color),
        ),
        leading: Icon(
          title == "Confirmed"
              ? Icons.check_circle
              : title == "Pending"
                  ? Icons.hourglass_empty
                  : Icons.cancel,
          color: color,
        ),
        initiallyExpanded: isExpanded,
        onExpansionChanged: onExpansionChanged,
        children: bookings
            .map((booking) => BookingItem(
                  booking: booking,
                ))
            .toList(),
      ),
    );
  }
}
