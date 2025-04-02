part of 'booking_reviews_bloc.dart';

@freezed
class BookingReviewsEvent with _$BookingReviewsEvent {
  const factory BookingReviewsEvent.started() = _Started;
  const factory BookingReviewsEvent.bookingReviewsFetched() =
      _bookingReviewsFetched;
}
