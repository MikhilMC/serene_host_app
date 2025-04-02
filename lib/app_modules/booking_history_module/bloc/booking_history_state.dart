part of 'booking_history_bloc.dart';

@freezed
class BookingHistoryState with _$BookingHistoryState {
  const factory BookingHistoryState.initial() = _Initial;
  const factory BookingHistoryState.loading() = BookingHistoryLoading;
  const factory BookingHistoryState.success(
    List<HostBookingHistoryModel> bookingHistory,
  ) = BookingHistorySuccess;
  const factory BookingHistoryState.error(
    String errorMessage,
  ) = BookingHistoryError;
  const factory BookingHistoryState.empty() = BookingHistoryEmpty;
}
