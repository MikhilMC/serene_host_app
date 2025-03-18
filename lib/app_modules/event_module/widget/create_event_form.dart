import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/event_module/bloc/add_event_bloc/add_event_bloc.dart';
import 'package:serene_host_app/app_modules/event_module/class/add_event_details.dart';
import 'package:serene_host_app/app_modules/home_page_module/view/home_screen.dart';
import 'package:serene_host_app/app_utils/app_helper.dart';
import 'package:serene_host_app/app_widgets/custom_button.dart';

import 'package:serene_host_app/app_widgets/multiline_text_field.dart';
import 'package:serene_host_app/app_widgets/normal_text_field.dart';
import 'package:serene_host_app/app_widgets/overlay_loader_widget.dart';
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

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();
  }

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
      if (_startDate != null) {
        if (_endDate != null) {
          if (_selectedImages.isNotEmpty) {
            final AddEventDetails addEventDetails = AddEventDetails(
              title: _titleController.text.trim(),
              description: _descriptionController.text.trim(),
              startDate: _startDate!,
              endDate: _endDate!,
              images: _selectedImages.map((image) => image).toList(),
            );

            final AddEventBloc addEventBloc =
                BlocProvider.of<AddEventBloc>(context);

            addEventBloc.add(AddEventEvent.eventAdded(addEventDetails));
          } else {
            AppHelper.showErrorDialogue(
              context,
              "Please add at least one image of the event",
            );
          }
        } else {
          AppHelper.showErrorDialogue(
            context,
            "Please add ending date of the event",
          );
        }
      } else {
        AppHelper.showErrorDialogue(
          context,
          "Please add starting date of the event",
        );
      }
    } else {
      AppHelper.showErrorDialogue(
        context,
        "Please add title and description of the event",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AddEventBloc, AddEventState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.status == "success") {
                AppHelper.showCustomSnackBar(
                  context,
                  "Adding Event Successfull.",
                );

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              } else {
                AppHelper.showErrorDialogue(
                  context,
                  "Adding Event Failed",
                );
              }
            },
            failure: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              "Adding Event Failed: $errorMessage",
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
            childWidget: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
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
                            children:
                                _selectedImages.asMap().entries.map((entry) {
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
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      ),
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
        },
      ),
    );
  }
}
