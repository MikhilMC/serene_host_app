part of 'add_event_bloc.dart';

@freezed
class AddEventState with _$AddEventState {
  const factory AddEventState.initial() = _Initial;
  const factory AddEventState.loading() = _loading;
  const factory AddEventState.success(
    AddEventResponseModel response,
  ) = _success;
  const factory AddEventState.failure(
    String errorMessage,
  ) = _failure;
}
