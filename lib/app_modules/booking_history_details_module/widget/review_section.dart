// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_modules/booking_history_details_module/bloc/user_review_bloc.dart';
import 'package:serene_host_app/app_modules/booking_history_details_module/widget/history_section_card.dart';
import 'package:serene_host_app/app_widgets/custom_error_widget.dart';

class ReviewSection extends StatefulWidget {
  final int bookingId;
  const ReviewSection({
    super.key,
    required this.bookingId,
  });

  @override
  State<ReviewSection> createState() => _ReviewSectionState();
}

class _ReviewSectionState extends State<ReviewSection> {
  @override
  void initState() {
    super.initState();
    context
        .read<UserReviewBloc>()
        .add(UserReviewEvent.userReviewFetched(widget.bookingId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserReviewBloc, UserReviewState>(
      builder: (context, state) {
        if (state is UserReviewError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is UserReviewEmpty) {
          return SizedBox();
        }

        if (state is! UserReviewSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }

        final userReview = state.userReview;
        return HistorySectionCard(
          title: "Guest Review",
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userReview[0].username,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: List.generate(5, (i) {
                  if (i < userReview[0].starRating.floor()) {
                    return const Icon(Icons.star, color: Colors.amber);
                  } else if (i < userReview[0].starRating) {
                    return const Icon(Icons.star_half, color: Colors.amber);
                  } else {
                    return const Icon(Icons.star_border, color: Colors.amber);
                  }
                }),
              ),
              const SizedBox(height: 6),
              Text(userReview[0].feedback),
              const SizedBox(height: 6),
              if (userReview[0].images.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: userReview[0].images.length,
                      itemBuilder: (context, photoIndex) {
                        final imageItem = userReview[0].images[photoIndex];
                        final imageUrl = imageItem.image;
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl: "${AppUrls.baseUrl}/$imageUrl",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
