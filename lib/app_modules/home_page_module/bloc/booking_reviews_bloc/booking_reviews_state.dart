part of 'booking_reviews_bloc.dart';

@freezed
class BookingReviewsState with _$BookingReviewsState {
  const factory BookingReviewsState.initial() = _Initial;
  const factory BookingReviewsState.loading() = BookingReviewsLoading;
  const factory BookingReviewsState.success(
    List<BookingReviewModel> bookingReviews,
  ) = BookingReviewsSuccess;
  const factory BookingReviewsState.failure(String errorMessage) =
      BookingReviewsFailure;
  const factory BookingReviewsState.empty() = BookingReviewsEmpty;
}
