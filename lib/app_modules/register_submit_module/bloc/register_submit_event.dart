part of 'register_submit_bloc.dart';

@freezed
class RegisterSubmitEvent with _$RegisterSubmitEvent {
  const factory RegisterSubmitEvent.started() = _Started;
  const factory RegisterSubmitEvent.registrationSubmitted(
    int hostId,
    double rate,
  ) = _registrationSubmitted;
}
