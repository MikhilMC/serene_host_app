part of 'profile_data_bloc.dart';

@freezed
class ProfileDataEvent with _$ProfileDataEvent {
  const factory ProfileDataEvent.started() = _Started;
  const factory ProfileDataEvent.profileDataFetched() = _profileDataFetched;
}
