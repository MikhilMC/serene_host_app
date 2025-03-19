import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:serene_host_app/app_constants/app_urls.dart';

class EventDetailsDialog extends StatelessWidget {
  final String title;
  final String description;
  final List<String> imageUrls;
  final DateTime startDate;
  final DateTime endDate;

  const EventDetailsDialog({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrls,
    required this.startDate,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat.yMMMd();

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight:
              MediaQuery.of(context).size.height * 0.7, // Increased height
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ✅ Event Title with larger font
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                // Event Dates
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Start: ${dateFormat.format(startDate)}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'End: ${dateFormat.format(endDate)}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // Event Description
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),

                // ✅ CarouselSlider for images
                if (imageUrls.isNotEmpty) ...[
                  CarouselSlider.builder(
                    itemCount: imageUrls.length,
                    itemBuilder: (context, index, realIndex) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          "${AppUrls.baseUrl}${imageUrls[index]}",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: 250, // Carousel height
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.85,
                      enableInfiniteScroll: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // Close Button
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Close'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
