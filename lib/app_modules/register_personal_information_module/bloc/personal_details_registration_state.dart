part of 'personal_details_registration_bloc.dart';

@freezed
class PersonalDetailsRegistrationState with _$PersonalDetailsRegistrationState {
  const factory PersonalDetailsRegistrationState.initial() = _Initial;
  const factory PersonalDetailsRegistrationState.loading() =
      _PersonalDetailsRegistrationStateLoading;
  const factory PersonalDetailsRegistrationState.success(
          PersonalDetailsRegisterResponseModel response) =
      _PersonalDetailsRegistrationSuccess;
  const factory PersonalDetailsRegistrationState.failure(String errorMessage) =
      _PersonalDetailsRegistrationFailure;
}
