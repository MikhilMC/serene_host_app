// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/documents_section.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/profile_header.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/profile_personal_details.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/property_details.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/section_title.dart';

class ProfileWidget extends StatelessWidget {
  final Map<String, dynamic> hostProfile;
  const ProfileWidget({
    super.key,
    required this.hostProfile,
  });

  /// ✅ **Show Edit Profile Screen (Placeholder)**
  void _showEditProfileScreen(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Edit Profile Screen (Coming Soon)")),
    );
  }

  /// ✅ **Show Delete Property Confirmation Dialog**
  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Delete Property?"),
        content: const Text(
            "Are you sure you want to delete this property? This action cannot be undone."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Property Deleted")),
              );
            },
            child: const Text("Delete", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileHeader(
            host: hostProfile,
            onEdit: () => _showEditProfileScreen(context),
            onDelete: () => _showDeleteConfirmationDialog(context),
          ),
          const SizedBox(height: 20),
          SectionTitle(title: "Personal Details"),
          ProfilePersonalDetails(host: hostProfile),
          const SizedBox(height: 20),
          SectionTitle(title: "Property Details"),
          PropertyDetails(host: hostProfile),
          const SizedBox(height: 20),
          SectionTitle(title: "Documents"),
          DocumentsSection(host: hostProfile),
        ],
      ),
    );
  }
}
