// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/details_item.dart';

class PropertyDetails extends StatelessWidget {
  final Map<String, dynamic> host;
  const PropertyDetails({
    super.key,
    required this.host,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsItem(
          icon: Icons.home,
          label: "Property Type",
          value: host["propertyType"],
        ),
        DetailsItem(
          icon: Icons.location_on,
          label: "Address",
          value: host["address"],
        ),
        DetailsItem(
          icon: Icons.map,
          label: "Coordinates",
          value: "Lat: ${host["latitude"]}, Lng: ${host["longitude"]}",
        ),
        DetailsItem(
          icon: Icons.description,
          label: "Description",
          value: host["description"],
        ),
        DetailsItem(
          icon: Icons.monetization_on,
          label: "Renting Rate",
          value: "\$${host["rentingRate"]} per night",
        ),
        DetailsItem(
          icon: Icons.star,
          label: "Average Rating",
          value: "${host["rating"]}",
        ),
        DetailsItem(
          icon: Icons.numbers,
          label: "Review Count",
          value: "${host["reviewCount"]} ratings",
        ),
        const SizedBox(height: 10),
        const Text(
          "Amenities",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Wrap(
          spacing: 8,
          children: List<Widget>.generate(
            host["amenities"].length,
            (index) => Chip(
              label: Text(host["amenities"][index]),
            ),
          ),
        ),
      ],
    );
  }
}
