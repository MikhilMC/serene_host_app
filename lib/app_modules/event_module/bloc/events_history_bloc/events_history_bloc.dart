import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/event_module/model/event_model/event_model.dart';
import 'package:serene_host_app/app_modules/event_module/service/get_events_history.dart';

part 'events_history_event.dart';
part 'events_history_state.dart';
part 'events_history_bloc.freezed.dart';

class EventsHistoryBloc extends Bloc<EventsHistoryEvent, EventsHistoryState> {
  EventsHistoryBloc() : super(_Initial()) {
    on<_eventsHistoryFetched>((event, emit) async {
      emit(EventsHistoryState.loading());
      try {
        final previousEvents = await getEventsHistory();
        if (previousEvents.isNotEmpty) {
          emit(EventsHistoryState.success(previousEvents));
        } else {
          emit(EventsHistoryState.empty());
        }
      } catch (e) {
        emit(EventsHistoryState.error(e.toString()));
      }
    });
  }
}
