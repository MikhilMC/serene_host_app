import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_models/register_response_model/register_response_model.dart';
import 'package:serene_host_app/app_modules/register_submit_module/service/submit_registration.dart';

part 'register_submit_event.dart';
part 'register_submit_state.dart';
part 'register_submit_bloc.freezed.dart';

class RegisterSubmitBloc
    extends Bloc<RegisterSubmitEvent, RegisterSubmitState> {
  RegisterSubmitBloc() : super(_Initial()) {
    on<_registrationSubmitted>((event, emit) async {
      emit(RegisterSubmitState.loading());
      try {
        final response = await sumbitRegistration(
          hostId: event.hostId,
          rate: event.rate,
        );
        emit(RegisterSubmitState.success(response));
      } catch (e) {
        emit(RegisterSubmitState.failure(e.toString()));
      }
    });
  }
}
