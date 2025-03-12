// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:serene_host_app/app_modules/home_page_module/widget/image_preview.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/property_images_carousel.dart';

class DocumentsSection extends StatelessWidget {
  final Map<String, dynamic> host;
  const DocumentsSection({
    super.key,
    required this.host,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("ID Proof",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ImagePreview(imageUrl: host["idProof"]),
        const SizedBox(height: 10),
        const Text("Property Images",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        PropertyImagesCarousel(images: host["propertyImages"]),
      ],
    );
  }
}
