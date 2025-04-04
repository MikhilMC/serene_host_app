import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/booking_history_details_module/model/user_review_model.dart';
import 'package:serene_host_app/app_modules/booking_history_details_module/service/get_user_review.dart';

part 'user_review_event.dart';
part 'user_review_state.dart';
part 'user_review_bloc.freezed.dart';

class UserReviewBloc extends Bloc<UserReviewEvent, UserReviewState> {
  UserReviewBloc() : super(_Initial()) {
    on<_userReviewFetched>((event, emit) async {
      emit(UserReviewState.loading());
      try {
        final userReview = await getUserReview(
          bookingId: event.bookingId,
        );
        if (userReview.isNotEmpty) {
          emit(UserReviewState.success(userReview));
        } else {
          emit(UserReviewState.empty());
        }
      } catch (e) {
        emit(UserReviewState.error(e.toString()));
      }
    });
  }
}
