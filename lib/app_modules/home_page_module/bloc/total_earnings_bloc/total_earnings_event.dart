part of 'total_earnings_bloc.dart';

@freezed
class TotalEarningsEvent with _$TotalEarningsEvent {
  const factory TotalEarningsEvent.started() = _Started;
  const factory TotalEarningsEvent.totalEarningsFetched() =
      _totalEarningsFetched;
}
