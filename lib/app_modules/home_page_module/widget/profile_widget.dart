// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_modules/home_page_module/bloc/profile_data_bloc.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/documents_section.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/profile_header.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/profile_personal_details.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/property_details.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/section_title.dart';
import 'package:serene_host_app/app_widgets/custom_error_widget.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileDataBloc>().add(ProfileDataEvent.profileDataFetched());
  }

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
    return BlocBuilder<ProfileDataBloc, ProfileDataState>(
      builder: (context, state) {
        if (state is ProfileDataError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is! ProfileDataSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }

        final Map<String, String> hostProfileHeaderData = {
          "profilePicture":
              "${AppUrls.baseUrl}${state.profileData.profilePicture ?? ""}",
          "fullName": state.profileData.name ?? ""
        };

        final Map<String, String> hostPersonalData = {
          "email": state.profileData.email ?? "",
          "phone": state.profileData.phoneNumber ?? "",
        };

        final Map<String, dynamic> hostPropertyData = {
          "propertyType": state.profileData.propertyType ?? "",
          "address": state.profileData.address ?? "",
          "latitude": state.profileData.latitude ?? "",
          "longitude": state.profileData.longitude ?? "",
          "description": state.profileData.description ?? "",
          "rentingRate": state.profileData.rate ?? "",
          "amenities": state.profileData.amenities?.split(", ") ?? [],
          "rating": state.profileData.rating ?? "0.0",
          "reviewCount": state.profileData.reviewCount ?? 0
        };

        final List<String> propertyImages =
            (state.profileData.propertyImages ?? [])
                .map((img) => "${AppUrls.baseUrl}$img")
                .toList();

        final Map<String, dynamic> hostDocumentsData = {
          "idProof": "${AppUrls.baseUrl}${state.profileData.idProof ?? ""}",
          "propertyImages": propertyImages
        };

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(
                host: hostProfileHeaderData,
                onEdit: () => _showEditProfileScreen(context),
                onDelete: () => _showDeleteConfirmationDialog(context),
              ),
              const SizedBox(height: 20),
              SectionTitle(title: "Personal Details"),
              ProfilePersonalDetails(host: hostPersonalData),
              const SizedBox(height: 20),
              SectionTitle(title: "Property Details"),
              PropertyDetails(host: hostPropertyData),
              const SizedBox(height: 20),
              SectionTitle(title: "Documents"),
              DocumentsSection(host: hostDocumentsData),
            ],
          ),
        );
      },
    );
  }
}
