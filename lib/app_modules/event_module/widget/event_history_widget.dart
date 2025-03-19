import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/event_module/bloc/events_history_bloc/events_history_bloc.dart';
import 'package:serene_host_app/app_modules/event_module/widget/event_card.dart';
import 'package:serene_host_app/app_widgets/custom_error_widget.dart';
import 'package:serene_host_app/app_widgets/empty_list.dart';

class EventHistoryWidget extends StatefulWidget {
  const EventHistoryWidget({super.key});

  @override
  State<EventHistoryWidget> createState() => _EventHistoryWidgetState();
}

class _EventHistoryWidgetState extends State<EventHistoryWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<EventsHistoryBloc>()
        .add(EventsHistoryEvent.eventsHistoryFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsHistoryBloc, EventsHistoryState>(
      builder: (context, state) {
        if (state is EventsHistoryError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is EventsHistoryEmpty) {
          return EmptyList(
            message: "No previous events available",
          );
        }

        if (state is! EventsHistorySuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }

        final previousEvents = state.previousEvents;

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: previousEvents.length,
          itemBuilder: (context, index) {
            final event = previousEvents[index];
            return EventCard(event: event);
          },
        );
      },
    );
  }
}
