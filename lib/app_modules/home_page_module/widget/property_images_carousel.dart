// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PropertyImagesCarousel extends StatelessWidget {
  final List<String>? images;
  const PropertyImagesCarousel({
    super.key,
    this.images,
  });

  @override
  Widget build(BuildContext context) {
    if (images == null || images!.isEmpty) {
      return const Text(
        "No property images uploaded",
        style: TextStyle(color: Colors.grey),
      );
    }
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
      ),
      items: images!.map((imageUrl) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        );
      }).toList(),
    );
  }
}
