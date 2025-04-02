import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/booking_review_model/booking_review_model.dart';

class BookingReviewCard extends StatelessWidget {
  const BookingReviewCard({
    super.key,
    required this.review,
  });

  final BookingReviewModel review;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    "${AppUrls.baseUrl}${review.profilePicture}",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        review.username,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: List.generate(5, (i) {
                    if (i < review.starRating.floor()) {
                      return Icon(Icons.star, color: Colors.amber);
                    } else if (i < review.starRating) {
                      return Icon(Icons.star_half, color: Colors.amber);
                    } else {
                      return Icon(Icons.star_border, color: Colors.amber);
                    }
                  }),
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (review.feedback != null)
              Text(
                review.feedback!,
                style: const TextStyle(fontSize: 14),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            if (review.images.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: review.images.length,
                    itemBuilder: (context, photoIndex) {
                      final imageItem = review.images[photoIndex];
                      final imageUrl = imageItem.image;
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl: "${AppUrls.baseUrl}/$imageUrl",
                            height: 80,
                            width: 80,
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
      ),
    );
  }
}
