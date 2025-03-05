part of 'property_details_register_bloc.dart';

@freezed
class PropertyDetailsRegisterState with _$PropertyDetailsRegisterState {
  const factory PropertyDetailsRegisterState.initial() = _Initial;
  const factory PropertyDetailsRegisterState.loading() = _loading;
  const factory PropertyDetailsRegisterState.success(
    RegisterResponseModel response,
  ) = _success;
  const factory PropertyDetailsRegisterState.failure(
    String errorMessage,
  ) = _failure;
}
