part of 'user_review_bloc.dart';

@freezed
class UserReviewState with _$UserReviewState {
  const factory UserReviewState.initial() = _Initial;
  const factory UserReviewState.loading() = UserReviewLoading;
  const factory UserReviewState.success(
    List<UserReviewModel> userReview,
  ) = UserReviewSuccess;
  const factory UserReviewState.error(
    String errorMessage,
  ) = UserReviewError;
  const factory UserReviewState.empty() = UserReviewEmpty;
}
