import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/home_page_module/bloc/booking_reviews_bloc/booking_reviews_bloc.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/booking_review_card.dart';
import 'package:serene_host_app/app_widgets/custom_error_widget.dart';
import 'package:serene_host_app/app_widgets/empty_list.dart';

class BookingReviewsWidget extends StatefulWidget {
  const BookingReviewsWidget({super.key});

  @override
  State<BookingReviewsWidget> createState() => _BookingReviewsWidgetState();
}

class _BookingReviewsWidgetState extends State<BookingReviewsWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<BookingReviewsBloc>()
        .add(BookingReviewsEvent.bookingReviewsFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingReviewsBloc, BookingReviewsState>(
      builder: (context, state) {
        if (state is BookingReviewsFailure) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is BookingReviewsEmpty) {
          return EmptyList(
            message: "No booking reviews available.",
          );
        }

        if (state is! BookingReviewsSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }

        final bookingReviews = state.bookingReviews;

        return ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: bookingReviews.length,
          itemBuilder: (context, index) {
            final review = bookingReviews[index];
            return BookingReviewCard(review: review);
          },
        );
      },
    );
  }
}
