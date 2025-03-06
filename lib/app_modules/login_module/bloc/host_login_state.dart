part of 'host_login_bloc.dart';

@freezed
class HostLoginState with _$HostLoginState {
  const factory HostLoginState.initial() = _Initial;
  const factory HostLoginState.loading() = _loading;
  const factory HostLoginState.success(
    LoginResponseModel response,
  ) = _success;
  const factory HostLoginState.failure(
    String errorMessage,
  ) = _failure;
}
