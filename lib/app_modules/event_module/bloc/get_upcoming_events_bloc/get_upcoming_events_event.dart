part of 'get_upcoming_events_bloc.dart';

@freezed
class GetUpcomingEventsEvent with _$GetUpcomingEventsEvent {
  const factory GetUpcomingEventsEvent.started() = _Started;
  const factory GetUpcomingEventsEvent.upcomingEventsFetched() =
      _upcomingEventsFetched;
}
