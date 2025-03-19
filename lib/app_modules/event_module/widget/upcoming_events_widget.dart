import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_modules/event_module/bloc/get_upcoming_events_bloc/get_upcoming_events_bloc.dart';
import 'package:serene_host_app/app_widgets/custom_error_widget.dart';
import 'package:serene_host_app/app_widgets/empty_list.dart';

class UpcomingEventsWidget extends StatefulWidget {
  const UpcomingEventsWidget({super.key});

  @override
  State<UpcomingEventsWidget> createState() => _UpcomingEventsWidgetState();
}

class _UpcomingEventsWidgetState extends State<UpcomingEventsWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<GetUpcomingEventsBloc>()
        .add(GetUpcomingEventsEvent.upcomingEventsFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUpcomingEventsBloc, GetUpcomingEventsState>(
      builder: (context, state) {
        if (state is UpcomingEventsError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is UpcomingEventsEmpty) {
          return EmptyList(
            message: "No upcoming events available",
          );
        }

        if (state is! UpcomingEventsSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }

        final upcomingEvents = state.upcomingEvents;
        final dateFormat = DateFormat.yMMMMd();

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: upcomingEvents.length,
          itemBuilder: (context, index) {
            final event = upcomingEvents[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Event Title
                    Text(
                      event.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Event Dates
                    Row(
                      children: [
                        const Icon(Icons.calendar_today,
                            size: 16, color: Colors.grey),
                        const SizedBox(width: 8),
                        Text(
                          '${dateFormat.format(event.startDate)} to ${dateFormat.format(event.endDate)}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Event Description
                    Text(
                      event.description,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Event Images
                    if (event.images.isNotEmpty) ...[
                      const Text(
                        'Event Images',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 160,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: event.images.length,
                          itemBuilder: (context, imgIndex) {
                            return Container(
                              width: 160,
                              margin: const EdgeInsets.only(right: 8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "${AppUrls.baseUrl}${event.images[imgIndex]}",
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Center(
                                    child: CircularProgressIndicator(
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(
                                    Icons.broken_image,
                                    color: Colors.grey,
                                    size: 50,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
