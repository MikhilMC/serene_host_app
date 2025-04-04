// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/total_earnings_widget.dart';

class ProfileHeader extends StatelessWidget {
  final Map<String, dynamic> host;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const ProfileHeader({
    super.key,
    required this.host,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: host["profilePicture"] ?? "",
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(strokeWidth: 2),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.account_circle,
                        size: 70,
                        color: Colors.grey,
                      ),
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    host["fullName"] ?? "Unknown",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  IconButton(onPressed: onEdit, icon: Icon(Icons.edit)),
                  IconButton(onPressed: onDelete, icon: Icon(Icons.delete))
                ],
              ),
            )
          ],
        ),
        const TotalEarningsWidget(),
      ],
    );
  }
}
