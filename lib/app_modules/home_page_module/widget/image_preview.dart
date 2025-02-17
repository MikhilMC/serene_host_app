// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePreview extends StatelessWidget {
  final String? imageUrl;
  const ImagePreview({
    super.key,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return imageUrl == null
        ? const Text("No ID Proof uploaded",
            style: TextStyle(color: Colors.grey))
        : ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: imageUrl!,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          );
  }
}
