import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/booking_review_model/booking_review_model.dart';
import 'package:serene_host_app/app_modules/home_page_module/service/get_booking_reviews.dart';

part 'booking_reviews_event.dart';
part 'booking_reviews_state.dart';
part 'booking_reviews_bloc.freezed.dart';

class BookingReviewsBloc
    extends Bloc<BookingReviewsEvent, BookingReviewsState> {
  BookingReviewsBloc() : super(_Initial()) {
    on<_bookingReviewsFetched>((event, emit) async {
      emit(BookingReviewsState.loading());
      try {
        final bookingReviews = await getBookingReviews();
        if (bookingReviews.isNotEmpty) {
          emit(BookingReviewsState.success(bookingReviews));
        } else {
          emit(BookingReviewsState.empty());
        }
      } catch (e) {
        emit(BookingReviewsState.failure(e.toString()));
      }
    });
  }
}
