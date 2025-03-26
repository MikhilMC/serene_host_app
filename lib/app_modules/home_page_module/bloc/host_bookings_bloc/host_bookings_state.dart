part of 'host_bookings_bloc.dart';

@freezed
class HostBookingsState with _$HostBookingsState {
  const factory HostBookingsState.initial() = _Initial;
  const factory HostBookingsState.loading() = HostBookingsLoading;
  const factory HostBookingsState.success(
    List<HostBookingModel> hostBookings,
  ) = HostBookingsSuccess;
  const factory HostBookingsState.error(
    String errorMessage,
  ) = HostBookingsError;
  const factory HostBookingsState.empty() = HostBookingsEmpty;
}
