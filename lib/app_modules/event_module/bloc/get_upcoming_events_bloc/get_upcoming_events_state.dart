part of 'get_upcoming_events_bloc.dart';

@freezed
class GetUpcomingEventsState with _$GetUpcomingEventsState {
  const factory GetUpcomingEventsState.initial() = _Initial;
  const factory GetUpcomingEventsState.loading() = UpcomingEventsLoading;
  const factory GetUpcomingEventsState.success(
    List<EventModel> upcomingEvents,
  ) = UpcomingEventsSuccess;
  const factory GetUpcomingEventsState.error(
    String errorMessage,
  ) = UpcomingEventsError;
  const factory GetUpcomingEventsState.empty() = UpcomingEventsEmpty;
}
