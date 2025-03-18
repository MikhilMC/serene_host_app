part of 'add_event_bloc.dart';

@freezed
class AddEventEvent with _$AddEventEvent {
  const factory AddEventEvent.started() = _Started;
  const factory AddEventEvent.eventAdded(
    AddEventDetails eventDetails,
  ) = _eventAdded;
}
