part of 'personal_details_registration_bloc.dart';

@freezed
class PersonalDetailsRegistrationEvent with _$PersonalDetailsRegistrationEvent {
  const factory PersonalDetailsRegistrationEvent.started() = _Started;
  const factory PersonalDetailsRegistrationEvent.hostPersonalDetailsRegistered(
    HostPersonalRegistrationDetails hostPersonalRegistrationDetails,
  ) = _HostPersonalDetailsRegistered;
}
