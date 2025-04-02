// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/home_page_module/view/home_screen.dart';
import 'package:serene_host_app/app_modules/report_user_module/bloc/report_user_bloc.dart';
import 'package:serene_host_app/app_modules/report_user_module/class/user_report_details.dart';
import 'package:serene_host_app/app_modules/report_user_module/widget/reasons_dropdown.dart';
import 'package:serene_host_app/app_utils/app_helper.dart';
import 'package:serene_host_app/app_widgets/custom_button.dart';
import 'package:serene_host_app/app_widgets/multiline_text_field.dart';
import 'package:serene_host_app/app_widgets/overlay_loader_widget.dart';

class ReportUserScreen extends StatefulWidget {
  final int bookingId;
  const ReportUserScreen({
    super.key,
    required this.bookingId,
  });

  @override
  State<ReportUserScreen> createState() => _ReportUserScreenState();
}

class _ReportUserScreenState extends State<ReportUserScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _reportController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  String? _selectedTitle;
  final List<File> _selectedImages = [];

  @override
  void dispose() {
    _reportController.dispose();
    super.dispose();
  }

  Future<void> _pickImages() async {
    final List<XFile> pickedImages = await _picker.pickMultiImage();

    if (pickedImages.isNotEmpty) {
      setState(() {
        _selectedImages.addAll(pickedImages.map((file) => File(file.path)));
      });
    }
  }

  Future<void> _submitReport() async {
    if (_selectedTitle != null) {
      if (_formKey.currentState!.validate()) {
        final UserReportDetails userReportDetails = UserReportDetails(
          bookingId: widget.bookingId,
          title: _selectedTitle!,
          description: _reportController.text.trim(),
          images: _selectedImages.isNotEmpty ? _selectedImages : null,
        );

        final ReportUserBloc reportUserBloc =
            BlocProvider.of<ReportUserBloc>(context);

        reportUserBloc.add(ReportUserEvent.userReported(userReportDetails));
      } else {
        AppHelper.showErrorDialogue(
          context,
          "Please enter problem description",
        );
      }
    } else {
      AppHelper.showErrorDialogue(
        context,
        "Please select a reason",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report User'),
        elevation: 0,
      ),
      body: BlocConsumer<ReportUserBloc, ReportUserState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.status == "success") {
                AppHelper.showCustomSnackBar(
                  context,
                  "Reporting against your guest successfull",
                );

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                  (route) => false,
                );
              } else {
                AppHelper.showErrorDialogue(
                  context,
                  "Guest Reporting Failed",
                );
              }
            },
            failure: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              "Guest Reporting Failed: $errorMessage",
            ),
          );
        },
        builder: (context, state) {
          bool isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return OverlayLoaderWidget(
            isLoading: isLoading,
            childWidget: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Select a reason for your report',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ReasonsDropdown(
                        selectedReason: _selectedTitle,
                        onReasonSelected: (value) {
                          setState(() {
                            _selectedTitle = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Describe the issue',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      MultilineTextField(
                        label: "Complaint",
                        controller: _reportController,
                        hintText: "Enter your complaint",
                        validatorFunction: (value) =>
                            value == null ? "Please enter description" : null,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Attach images (optional)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          for (var img in _selectedImages)
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.file(
                                img,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          GestureDetector(
                            onTap: _pickImages,
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.add_a_photo,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      CustomButton(
                        buttonWidth: double.infinity,
                        backgroundColor: AppColors.primaryColor,
                        textColor: Colors.white,
                        labelText: "Submit Report",
                        onClick: _submitReport,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
