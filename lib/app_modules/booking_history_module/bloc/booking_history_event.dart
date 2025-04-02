part of 'booking_history_bloc.dart';

@freezed
class BookingHistoryEvent with _$BookingHistoryEvent {
  const factory BookingHistoryEvent.started() = _Started;
  const factory BookingHistoryEvent.bookingHistoryFetched() =
      _bookingHistoryFetched;
}
