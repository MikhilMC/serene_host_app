part of 'host_bookings_bloc.dart';

@freezed
class HostBookingsEvent with _$HostBookingsEvent {
  const factory HostBookingsEvent.started() = _Started;
  const factory HostBookingsEvent.hostBookingFetched() = _hostBookingFetched;
}
