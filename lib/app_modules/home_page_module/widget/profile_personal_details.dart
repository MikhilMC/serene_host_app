// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:serene_host_app/app_modules/home_page_module/widget/details_item.dart';

class ProfilePersonalDetails extends StatelessWidget {
  final Map<String, dynamic> host;
  const ProfilePersonalDetails({
    super.key,
    required this.host,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsItem(icon: Icons.email, label: "Email", value: host["email"]),
        DetailsItem(icon: Icons.phone, label: "Phone", value: host["phone"]),
        DetailsItem(icon: Icons.lock, label: "Password", value: "••••••••"),
      ],
    );
  }
}
