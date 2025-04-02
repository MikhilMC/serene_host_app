import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/report_user_module/class/user_report_details.dart';
import 'package:serene_host_app/app_modules/report_user_module/model/user_report_response_model.dart';
import 'package:serene_host_app/app_modules/report_user_module/service/report_user.dart';

part 'report_user_event.dart';
part 'report_user_state.dart';
part 'report_user_bloc.freezed.dart';

class ReportUserBloc extends Bloc<ReportUserEvent, ReportUserState> {
  ReportUserBloc() : super(_Initial()) {
    on<_userReported>((event, emit) async {
      emit(ReportUserState.loading());
      try {
        final response = await reportUser(
          userReportDetails: event.userReportDetails,
        );
        emit(ReportUserState.success(response));
      } catch (e) {
        emit(ReportUserState.failure(e.toString()));
      }
    });
  }
}
