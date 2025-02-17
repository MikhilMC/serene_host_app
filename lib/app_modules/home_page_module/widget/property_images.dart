// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PropertyImages extends StatelessWidget {
  final List<String>? images;
  const PropertyImages({
    super.key,
    this.images,
  });

  @override
  Widget build(BuildContext context) {
    if (images == null || images!.isEmpty) {
      return const Text("No property images uploaded",
          style: TextStyle(color: Colors.grey));
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: images!.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: images![index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
