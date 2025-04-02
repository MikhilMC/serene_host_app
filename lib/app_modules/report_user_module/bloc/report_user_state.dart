part of 'report_user_bloc.dart';

@freezed
class ReportUserState with _$ReportUserState {
  const factory ReportUserState.initial() = _Initial;
  const factory ReportUserState.loading() = _loading;
  const factory ReportUserState.success(
    UserReportResponseModel response,
  ) = _success;
  const factory ReportUserState.failure(
    String errorMessage,
  ) = _failure;
}
