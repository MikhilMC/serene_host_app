part of 'report_user_bloc.dart';

@freezed
class ReportUserEvent with _$ReportUserEvent {
  const factory ReportUserEvent.started() = _Started;
  const factory ReportUserEvent.userReported(
    UserReportDetails userReportDetails,
  ) = _userReported;
}
