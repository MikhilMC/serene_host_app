part of 'register_submit_bloc.dart';

@freezed
class RegisterSubmitState with _$RegisterSubmitState {
  const factory RegisterSubmitState.initial() = _Initial;
  const factory RegisterSubmitState.loading() = _loading;
  const factory RegisterSubmitState.success(
    RegisterResponseModel response,
  ) = _success;
  const factory RegisterSubmitState.failure(
    String errorMessage,
  ) = _failure;
}
