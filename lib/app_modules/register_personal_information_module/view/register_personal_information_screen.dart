import 'package:flutter/material.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/login_module/view/login_screen.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/view/register_property_details_screen.dart';
import 'package:serene_host_app/app_widgets/normal_text_field.dart';
import 'package:serene_host_app/app_widgets/password_text_field.dart';

class RegisterPersonalInformationScreen extends StatefulWidget {
  const RegisterPersonalInformationScreen({super.key});

  @override
  State<RegisterPersonalInformationScreen> createState() =>
      _RegisterPersonalInformationScreenState();
}

class _RegisterPersonalInformationScreenState
    extends State<RegisterPersonalInformationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleNext() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => RegisterPropertyDetailsScreen(),
        ),
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
              "Personal Details",
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
                  NormalTextField(
                    textEditingController: _fullNameController,
                    validatorFunction: (value) {
                      // add email validation
                      // if (value == null || value.isEmpty) {
                      //   return 'Please enter full name';
                      // }

                      return null;
                    },
                    labelText: 'Full Name',
                    hintText: 'Enter your full name',
                    textFieldIcon: Icon(Icons.person),
                  ),
                  _gap(context),
                  NormalTextField(
                    textEditingController: _emailController,
                    validatorFunction: (value) {
                      // add email validation
                      // if (value == null || value.isEmpty) {
                      //   return 'Please enter email';
                      // }

                      // bool emailValid = RegExp(
                      //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      //     .hasMatch(value);
                      // if (!emailValid) {
                      //   return 'Please enter a valid email';
                      // }

                      return null;
                    },
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    textFieldIcon: Icon(Icons.email_outlined),
                    textInputType: TextInputType.emailAddress,
                  ),
                  _gap(context),
                  NormalTextField(
                    textEditingController: _phoneNumberController,
                    validatorFunction: (value) {
                      // add phone number validation
                      // if (value == null || value.isEmpty) {
                      //   return 'Please enter phone number';
                      // }

                      // bool phoneValid = RegExp(r"^(\+91|\+91\-|0)?[789]\d{9}$")
                      //     .hasMatch(value);
                      // if (!phoneValid) {
                      //   return 'Please enter a valid phone number';
                      // }

                      return null;
                    },
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number',
                    textInputType: TextInputType.phone,
                    textFieldIcon: Icon(Icons.phone),
                  ),
                  _gap(context),
                  PasswordTextField(
                    passwordController: _passwordController,
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
                        onPressed: null,
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
