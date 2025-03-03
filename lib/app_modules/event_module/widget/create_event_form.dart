import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_widgets/custom_button.dart';

import 'package:serene_host_app/app_widgets/multiline_text_field.dart';
import 'package:serene_host_app/app_widgets/normal_text_field.dart';
import 'package:serene_host_app/app_widgets/select_date_widget.dart';

class CreateEventForm extends StatefulWidget {
  const CreateEventForm({super.key});

  @override
  State<CreateEventForm> createState() => _CreateEventFormState();
}

class _CreateEventFormState extends State<CreateEventForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();
  final List<File> _selectedImages = [];
  DateTime? _startDate;
  DateTime? _endDate;

  Future<void> _pickImages() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile> images = await picker.pickMultiImage();
    setState(() {
      _selectedImages.addAll(images.map((image) => File(image.path)).toList());
    });
  }

  void _removeImage(int index) {
    setState(() {
      _selectedImages.removeAt(index);
    });
  }

  void _createEvent() {
    if (_formKey.currentState!.validate()) {
      // Process the form data
      if (kDebugMode) {
        print('Title: ${_titleController.text}');
        print('Description: ${_descriptionController.text}');
        print('Start Date: ${_startDateController.text}');
        print('End Date: ${_endDateController.text}');
        print('Images: ${_selectedImages.length}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              NormalTextField(
                textEditingController: _titleController,
                validatorFunction: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event title';
                  }
                  return null;
                },
                labelText: "Title",
                hintText: "Enter event title",
              ),
              const SizedBox(height: 20),
              MultilineTextField(
                label: "Description",
                controller: _descriptionController,
                hintText: "Enter event description",
                validatorFunction: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              SelectDateWidget(
                value: _startDate,
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(Duration(days: 365)),
                onValueChange: (value) {
                  setState(() {
                    _startDate = value;
                  });
                },
                labelText: "Start Date",
              ),
              const SizedBox(height: 20),
              SelectDateWidget(
                value: _endDate,
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(Duration(days: 365)),
                onValueChange: (value) {
                  setState(() {
                    _endDate = value;
                  });
                },
                labelText: "End Date",
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _pickImages,
                child: const Text('Select Images'),
              ),
              const SizedBox(height: 20),
              _selectedImages.isEmpty
                  ? const Text('No images selected')
                  : Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: _selectedImages.asMap().entries.map((entry) {
                        int idx = entry.key;
                        File image = entry.value;
                        return Stack(
                          children: [
                            Image.file(
                              image,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              right: 0,
                              child: IconButton(
                                icon:
                                    const Icon(Icons.close, color: Colors.red),
                                onPressed: () => _removeImage(idx),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
              const SizedBox(height: 20),
              CustomButton(
                buttonWidth: double.infinity,
                backgroundColor: AppColors.primaryColor,
                textColor: Colors.white,
                labelText: "Create Event",
                onClick: _createEvent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
