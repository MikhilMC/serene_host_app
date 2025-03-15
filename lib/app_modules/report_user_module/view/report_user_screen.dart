// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_widgets/custom_button.dart';
import 'package:serene_host_app/app_widgets/multiline_text_field.dart';

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
  bool _isSubmitting = false;

  @override
  void dispose() {
    _reportController.dispose();
    super.dispose();
  }

  Future<void> _submitReport() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSubmitting = true;
      });

      // TODO: Implement your API call here
      // Example:
      // await YourApiService.reportUser(
      //   bookingId: widget.bookingId,
      //   reportText: _reportController.text,
      // );

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      setState(() {
        _isSubmitting = false;
      });

      // Show success message
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Report submitted successfully'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.pop(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report User'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Please describe your issue',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: MultilineTextField(
                    label: "Complaint",
                    controller: _reportController,
                    hintText: "Enter your complaint",
                  ),
                ),
                const SizedBox(height: 16),
                CustomButton(
                  buttonWidth: double.infinity,
                  backgroundColor: AppColors.primaryColor,
                  textColor: Colors.white,
                  labelText: "Submit Report",
                  onClick: () {
                    _isSubmitting ? null : _submitReport();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
