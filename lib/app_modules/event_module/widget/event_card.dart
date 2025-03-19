// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:serene_host_app/app_constants/app_urls.dart';

import 'package:serene_host_app/app_modules/event_module/model/event_model/event_model.dart';
import 'package:serene_host_app/app_modules/event_module/widget/event_datails_dialogue.dart';

class EventCard extends StatelessWidget {
  final EventModel event;
  const EventCard({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat.yMMMd();
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🎯 Image Slider
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: event.images.length,
              itemBuilder: (context, imgIndex) {
                return CachedNetworkImage(
                  imageUrl: "${AppUrls.baseUrl}${event.images[imgIndex]}",
                  placeholder: (context, url) => Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    color: Colors.grey[300],
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                  errorWidget: (context, url, error) => Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    color: Colors.grey[300],
                    child: const Icon(Icons.broken_image, color: Colors.red),
                  ),
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.8,
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🌟 Title
                Text(
                  event.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                // 📅 Date
                Row(
                  children: [
                    const Icon(Icons.calendar_today,
                        size: 16, color: Colors.blue),
                    const SizedBox(width: 8),
                    Text(
                      "${dateFormat.format(event.startDate)} - ${dateFormat.format(event.endDate)}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // 📝 Description
                Text(
                  event.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14),
                ),

                const SizedBox(height: 12),

                // 🔗 Read More Button
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton.icon(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => EventDetailsDialog(
                          title: event.title,
                          description: event.description,
                          imageUrls: event.images,
                          startDate: event.startDate,
                          endDate: event.endDate,
                        ),
                      );
                    },
                    icon: const Icon(Icons.info_outline, color: Colors.blue),
                    label: const Text(
                      "Read More",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
