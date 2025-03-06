import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/home_page_module/view/home_screen.dart';
import 'package:serene_host_app/app_modules/login_module/bloc/host_login_bloc.dart';
import 'package:serene_host_app/app_modules/register_documents_upload_module/view/register_documents_upload_screen.dart';
import 'package:serene_host_app/app_modules/register_personal_information_module/view/register_personal_information_screen.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/view/register_property_details_screen.dart';
import 'package:serene_host_app/app_modules/register_submit_module/view/register_submit_screen.dart';
import 'package:serene_host_app/app_utils/app_helper.dart';
import 'package:serene_host_app/app_widgets/form_logo.dart';
import 'package:serene_host_app/app_widgets/normal_text_field.dart';
import 'package:serene_host_app/app_widgets/overlay_loader_widget.dart';
import 'package:serene_host_app/app_widgets/password_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      final hostLoginBloc = BlocProvider.of<HostLoginBloc>(context);

      hostLoginBloc.add(
        HostLoginEvent.loggedIn(
          _emailController.text.trim(),
          _passwordController.text.trim(),
        ),
      );
    } else {
      AppHelper.showErrorDialogue(
        context,
        "You have to enter email and password",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocConsumer<HostLoginBloc, HostLoginState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.message == "Login successful!") {
                switch (response.status) {
                  case "personal_details_entered":
                    AppHelper.showCustomSnackBar(
                      context,
                      "Please enter property details.",
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPropertyDetailsScreen(
                          newHostId: response.id,
                        ),
                      ),
                    );
                    break;
                  case "property_details_entering":
                    AppHelper.showCustomSnackBar(
                      context,
                      "Please upload necessory documents.",
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterDocumentsUploadScreen(
                          newHostId: response.id,
                        ),
                      ),
                    );
                    break;
                  case "file_uploaded":
                    AppHelper.showCustomSnackBar(
                      context,
                      "Please enter rate and complete registration",
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterSubmitScreen(
                          newHostId: response.id,
                        ),
                      ),
                    );
                    break;
                  case "pending":
                    AppHelper.showErrorDialogue(
                      context,
                      "Your account still haven't been approved. Please try again later, or contact admin.",
                    );
                    break;
                  default:
                    AppHelper.showCustomSnackBar(
                      context,
                      "Host Login Successful.",
                    );

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                    break;
                }
              } else {
                AppHelper.showErrorDialogue(
                  context,
                  "Host Login Failed.",
                );
              }
            },
            failure: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              "Host Login Failed: $errorMessage",
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
            childWidget: Form(
              key: _formKey,
              child: Center(
                child: Card(
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.05,
                      vertical: screenSize.height * 0.05,
                    ),
                    constraints:
                        BoxConstraints(maxWidth: screenSize.width * 0.85),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FormLogo(
                            shouldDisplayText: true,
                          ),
                          _gap(),
                          NormalTextField(
                            textEditingController: _emailController,
                            validatorFunction: (value) {
                              // add email validation
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }

                              bool emailValid = RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value);
                              if (!emailValid) {
                                return 'Please enter a valid email';
                              }

                              return null;
                            },
                            labelText: 'Email',
                            hintText: 'Enter your email',
                            textFieldIcon: Icon(Icons.email_outlined),
                            textInputType: TextInputType.emailAddress,
                          ),
                          _gap(),
                          PasswordTextField(
                            passwordController: _passwordController,
                          ),
                          _gap(),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                backgroundColor: AppColors.primaryColor,
                              ),
                              onPressed: _login,
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
              builder: (context) => RegisterPersonalInformationScreen(),
            ),
          ),
          child: Text(
            "Create Account",
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

  Widget _gap() {
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(height: screenSize.height * 0.025);
  }
}
