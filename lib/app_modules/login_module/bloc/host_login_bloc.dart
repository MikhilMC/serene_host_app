import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/login_module/model/login_response_model.dart';
import 'package:serene_host_app/app_modules/login_module/service/host_login.dart';

part 'host_login_event.dart';
part 'host_login_state.dart';
part 'host_login_bloc.freezed.dart';

class HostLoginBloc extends Bloc<HostLoginEvent, HostLoginState> {
  HostLoginBloc() : super(_Initial()) {
    on<_loggedIn>((event, emit) async {
      emit(HostLoginState.loading());
      try {
        final response = await hostLogin(
          email: event.email,
          password: event.password,
        );

        emit(HostLoginState.success(response));
      } catch (e) {
        emit(HostLoginState.failure(e.toString()));
      }
    });
  }
}
