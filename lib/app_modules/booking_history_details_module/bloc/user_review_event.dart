part of 'user_review_bloc.dart';

@freezed
class UserReviewEvent with _$UserReviewEvent {
  const factory UserReviewEvent.started() = _Started;
  const factory UserReviewEvent.userReviewFetched(
    int bookingId,
  ) = _userReviewFetched;
}
