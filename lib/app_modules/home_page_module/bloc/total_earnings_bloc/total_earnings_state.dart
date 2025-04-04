part of 'total_earnings_bloc.dart';

@freezed
class TotalEarningsState with _$TotalEarningsState {
  const factory TotalEarningsState.initial() = _Initial;
  const factory TotalEarningsState.loading() = TotalEarningsLoading;
  const factory TotalEarningsState.success(
    TotalEarningsModel totalEarnings,
  ) = TotalEarningsSuccess;
  const factory TotalEarningsState.error(
    String errorMessage,
  ) = TotalEarningsError;
}
