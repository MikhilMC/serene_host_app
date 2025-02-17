import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/login_module/view/login_screen.dart';
import 'package:serene_host_app/app_modules/register_documents_upload_module/view/register_documents_upload_screen.dart';
import 'package:serene_host_app/app_modules/register_personal_information_module/view/register_personal_information_screen.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/widget/amneties_selection.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/widget/property_type_dropdown.dart';
import 'package:serene_host_app/app_widgets/multiline_text_field.dart';
import 'package:serene_host_app/app_widgets/normal_text_field.dart';

class RegisterPropertyDetailsScreen extends StatefulWidget {
  const RegisterPropertyDetailsScreen({super.key});

  @override
  State<RegisterPropertyDetailsScreen> createState() =>
      _RegisterPropertyDetailsScreenState();
}

class _RegisterPropertyDetailsScreenState
    extends State<RegisterPropertyDetailsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _latitudeController = TextEditingController();
  final TextEditingController _longitudeController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  List<String> selectedAmenities = [];
  String? _selectedPropertyType;

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    _addressController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _toggleAmenity(String amenity) {
    setState(() {
      if (selectedAmenities.contains(amenity)) {
        selectedAmenities.remove(amenity);
      } else {
        selectedAmenities.add(amenity);
      }
    });
  }

  void _handlePrevious() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterPersonalInformationScreen(),
      ),
    );
  }

  void _handleNext() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => RegisterDocumentsUploadScreen(),
        ),
      );
    }
  }

  Future<void> _getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if the location permissions are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, return
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Location Serices disabled")),
        );
      }

      return;
    }

    // Check location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, return
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Location Permission denied")),
          );
        }
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are permanently denied, return
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Location Permission denied forever")),
        );
      }
      return;
    }

    // Get the current location
    Position position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      ),
    );

    setState(() {
      _latitudeController.text = position.latitude.toString();
      _longitudeController.text = position.longitude.toString();
    });
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
              "Property Details",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: Center(
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
                  _gap(context),
                  // Property Type Dropdown
                  PropertyTypeDropdown(
                    selectedPropertyType: _selectedPropertyType,
                    onTypeSelected: (String? newType) {
                      setState(() {
                        _selectedPropertyType = newType;
                      });
                    },
                  ),
                  _gap(context),
                  MultilineTextField(
                    controller: _addressController,
                    validatorFunction: (value) {
                      // add email validation
                      // if (value == null || value.isEmpty) {
                      //   return 'Please enter address';
                      // }

                      return null;
                    },
                    label: 'Address',
                    hintText: 'Enter your address',
                  ),
                  _gap(context),
                  Row(
                    children: [
                      SizedBox(
                        width: screenSize.width * 0.3,
                        child: NormalTextField(
                          labelText: 'Latitude',
                          hintText: 'Latitude',
                          isDisabled: true,
                          textEditingController: _latitudeController,
                          validatorFunction: (_) {
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      SizedBox(
                        width: screenSize.width * 0.3,
                        child: NormalTextField(
                          labelText: 'Longitude',
                          hintText: 'Longitude',
                          isDisabled: true,
                          textEditingController: _longitudeController,
                          validatorFunction: (_) {
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.013,
                      ),
                      SizedBox(
                        // width: screenSize.width * 0.3,
                        child: IconButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            backgroundColor: AppColors.primaryColor,
                          ),
                          icon: Icon(
                            Icons.location_pin,
                            color: Colors.white,
                          ),
                          onPressed: _getLocation,
                        ),
                      ),
                    ],
                  ),
                  _gap(context),
                  MultilineTextField(
                    controller: _descriptionController,
                    validatorFunction: (value) {
                      // add email validation
                      // if (value == null || value.isEmpty) {
                      //   return 'Please enter description';
                      // }

                      return null;
                    },
                    label: 'Description',
                    hintText: 'Enter your description',
                  ),
                  _gap(context),
                  Text(
                    "Selected Amenities:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  _gap(context),
                  Wrap(
                    spacing: 8.0,
                    children: selectedAmenities.map((amenity) {
                      return Chip(
                        label: Text(amenity),
                        deleteIcon: Icon(Icons.close),
                        onDeleted: () {
                          _toggleAmenity(
                            amenity,
                          ); // Remove the amenity when clicked
                        },
                      );
                    }).toList(),
                  ),
                  _gap(context),
                  AmenitiesSelection(
                    selectedAmenities: selectedAmenities,
                    onAmenityToggle: _toggleAmenity,
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
