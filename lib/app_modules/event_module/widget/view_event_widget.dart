import 'package:flutter/material.dart';
import 'package:faker/faker.dart' as faker;

class ViewEventWidget extends StatelessWidget {
  final faker.Faker _faker = faker.Faker();

  ViewEventWidget({super.key});

  // Generate random event data
  Map<String, dynamic> generateEventData() {
    return {
      'title': _faker.lorem.sentence(),
      'description': _faker.lorem.sentences(3).join(' '),
      'startDate': _faker.date
          .dateTime(minYear: 2023, maxYear: 2024)
          .toString()
          .split(' ')[0],
      'endDate': _faker.date
          .dateTime(minYear: 2023, maxYear: 2024)
          .toString()
          .split(' ')[0],
      'images': List.generate(
        5,
        (index) => 'https://picsum.photos/600/400?random=$index',
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final eventData = generateEventData();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Event Title
          Text(
            eventData['title'],
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Event Dates
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              const SizedBox(width: 8),
              Text(
                '${eventData['startDate']} to ${eventData['endDate']}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Event Description
          Text(
            eventData['description'],
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 24),

          // Event Images
          const Text(
            'Event Images',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1.5,
            ),
            itemCount: eventData['images'].length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  eventData['images'][index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
