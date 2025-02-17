import 'package:flutter/material.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/booking_review.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/booking_review_card.dart';

class BookingReviewsWidget extends StatelessWidget {
  final List<BookingReview> bookingReviews;
  const BookingReviewsWidget({super.key, required this.bookingReviews});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: bookingReviews.length,
      itemBuilder: (context, index) {
        final review = bookingReviews[index];
        return BookingReviewCard(review: review);
      },
    );
  }
}
