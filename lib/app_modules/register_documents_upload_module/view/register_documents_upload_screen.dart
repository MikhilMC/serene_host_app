// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/login_module/view/login_screen.dart';
import 'package:serene_host_app/app_modules/register_documents_upload_module/bloc/document_upload_bloc.dart';
import 'package:serene_host_app/app_modules/register_documents_upload_module/class/document_upload_details.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/view/register_property_details_screen.dart';
import 'package:serene_host_app/app_modules/register_submit_module/view/register_submit_screen.dart';
import 'package:serene_host_app/app_utils/app_helper.dart';
import 'package:serene_host_app/app_widgets/overlay_loader_widget.dart';

class RegisterDocumentsUploadScreen extends StatefulWidget {
  final int newHostId;
  const RegisterDocumentsUploadScreen({
    super.key,
    required this.newHostId,
  });

  @override
  State<RegisterDocumentsUploadScreen> createState() =>
      _RegisterDocumentsUploadScreenState();
}

class _RegisterDocumentsUploadScreenState
    extends State<RegisterDocumentsUploadScreen> {
  File? _profilePicture;
  File? _idProof;
  final List<File> _propertyImages = [];

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickProfilePicture() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profilePicture = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickIdProof() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _idProof = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickPropertyImage() async {
    final List<XFile> pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles.isNotEmpty) {
      setState(() {
        _propertyImages.addAll(pickedFiles.map((file) => File(file.path)));
      });
    }
  }

  void _handlePrevious() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterPropertyDetailsScreen(
          newHostId: widget.newHostId,
        ),
      ),
    );
  }

  void _handleNext() {
    FocusScope.of(context).unfocus();
    if (_profilePicture != null) {
      if (_idProof != null) {
        if (_propertyImages.isNotEmpty) {
          DocumentUploadDetails documentUploadDetails = DocumentUploadDetails(
            profilePicture: _profilePicture!,
            idProof: _idProof!,
            images: _propertyImages,
          );

          final documentUploadBloc =
              BlocProvider.of<DocumentUploadBloc>(context);

          documentUploadBloc.add(DocumentUploadEvent.documentUploaded(
            widget.newHostId,
            documentUploadDetails,
          ));
        } else {
          AppHelper.showErrorDialogue(
            context,
            "Please upload at least one image of the property.",
          );
        }
      } else {
        AppHelper.showErrorDialogue(
          context,
          "Please upload ID proof.",
        );
      }
    } else {
      AppHelper.showErrorDialogue(
        context,
        "Please upload profile picture.",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo_dark.png"),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              "Image Upload",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: BlocConsumer<DocumentUploadBloc, DocumentUploadState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.status == "success") {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Documents Upload Successfull.",
                    ),
                  ),
                );

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterSubmitScreen(
                      newHostId: widget.newHostId,
                    ),
                  ),
                );
              } else {
                AppHelper.showErrorDialogue(
                  context,
                  "Upload Documents Failed.",
                );
              }
            },
            failure: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              "Upload Documents Failed: $errorMessage",
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
            childWidget: Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.05,
                  vertical: screenSize.height * 0.05,
                ),
                constraints: BoxConstraints(maxWidth: screenSize.width * 0.85),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Upload Profile Picture",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _gap(context),
                      GestureDetector(
                        onTap: _pickProfilePicture,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: ClipOval(
                            // clipBehavior: Clip.hardEdge,
                            child: _profilePicture == null
                                ? Icon(
                                    Icons.add_a_photo,
                                    size: 50,
                                    color: Colors.grey,
                                  )
                                : Image.file(
                                    _profilePicture!,
                                    width:
                                        150, // Ensures image fills the container
                                    height: 150,
                                    fit:
                                        BoxFit.cover, // Prevents image overflow
                                  ),
                          ),
                        ),
                      ),
                      _gap(context),
                      Text(
                        "Upload ID Proof:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _gap(context),
                      GestureDetector(
                        onTap: _pickIdProof,
                        child: Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: _idProof == null
                              ? Icon(
                                  Icons.add_a_photo,
                                  size: 50,
                                  color: Colors.grey,
                                )
                              : Image.file(
                                  _idProof!,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                      _gap(context),
                      Text(
                        "Upload Property Images:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _gap(context),
                      ElevatedButton(
                        onPressed: _pickPropertyImage,
                        child: Text("Select Property Images"),
                      ),
                      _gap(context),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: _propertyImages.map((image) {
                          return Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Image.file(
                                image,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                right: -5,
                                top: -5,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _propertyImages.remove(image);
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                    padding: EdgeInsets.all(4),
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                      _gap(context),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              backgroundColor: AppColors.tertiaryColor,
                            ),
                            onPressed: _handlePrevious,
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Previous',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              backgroundColor: AppColors.primaryColor,
                            ),
                            onPressed: _handleNext,
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      persistentFooterButtons: [
        InkWell(
          onTap: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          ),
          child: Text(
            "Login To Account",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
        )
      ],
      persistentFooterAlignment: AlignmentDirectional.center,
    );
  }

  Widget _gap(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(height: screenSize.height * 0.0125);
  }
}
