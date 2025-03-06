import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_models/host_data_model/host_data_model.dart';
import 'package:serene_host_app/app_modules/home_page_module/service/get_profile_data.dart';

part 'profile_data_event.dart';
part 'profile_data_state.dart';
part 'profile_data_bloc.freezed.dart';

class ProfileDataBloc extends Bloc<ProfileDataEvent, ProfileDataState> {
  ProfileDataBloc() : super(_Initial()) {
    on<_profileDataFetched>((event, emit) async {
      emit(ProfileDataState.loading());
      try {
        final profileData = await getProfileData();

        emit(ProfileDataState.success(profileData));
      } catch (e) {
        emit(ProfileDataState.error(e.toString()));
      }
    });
  }
}
