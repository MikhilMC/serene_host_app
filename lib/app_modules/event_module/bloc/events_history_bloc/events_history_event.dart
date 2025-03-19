part of 'events_history_bloc.dart';

@freezed
class EventsHistoryEvent with _$EventsHistoryEvent {
  const factory EventsHistoryEvent.started() = _Started;
  const factory EventsHistoryEvent.eventsHistoryFetched() =
      _eventsHistoryFetched;
}
