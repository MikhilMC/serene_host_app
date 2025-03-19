part of 'events_history_bloc.dart';

@freezed
class EventsHistoryState with _$EventsHistoryState {
  const factory EventsHistoryState.initial() = _Initial;
  const factory EventsHistoryState.loading() = EventsHistoryLoading;
  const factory EventsHistoryState.success(
    List<EventModel> previousEvents,
  ) = EventsHistorySuccess;
  const factory EventsHistoryState.error(
    String errorMessage,
  ) = EventsHistoryError;
  const factory EventsHistoryState.empty() = EventsHistoryEmpty;
}
