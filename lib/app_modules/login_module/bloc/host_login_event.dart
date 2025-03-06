part of 'host_login_bloc.dart';

@freezed
class HostLoginEvent with _$HostLoginEvent {
  const factory HostLoginEvent.started() = _Started;
  const factory HostLoginEvent.loggedIn(
    String email,
    String password,
  ) = _loggedIn;
}
