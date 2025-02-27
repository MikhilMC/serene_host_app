import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/register_personal_information_module/class/host_personal_registration_details.dart';
import 'package:serene_host_app/app_modules/register_personal_information_module/model/personal_details_registration_response_model.dart';
import 'package:serene_host_app/app_modules/register_personal_information_module/service/register_personal_details.dart';

part 'personal_details_registration_event.dart';
part 'personal_details_registration_state.dart';
part 'personal_details_registration_bloc.freezed.dart';

class PersonalDetailsRegistrationBloc extends Bloc<
    PersonalDetailsRegistrationEvent, PersonalDetailsRegistrationState> {
  PersonalDetailsRegistrationBloc() : super(const _Initial()) {
    on<_HostPersonalDetailsRegistered>(
      (event, emit) async {
        emit(const PersonalDetailsRegistrationState.loading());
        try {
          final response = await registerPersonalDetails(
            hostPersonalRegistrationDetails:
                event.hostPersonalRegistrationDetails,
          );

          emit(PersonalDetailsRegistrationState.success(response));
        } catch (e) {
          emit(PersonalDetailsRegistrationState.failure(e.toString()));
        }
      },
    );
  }
}
