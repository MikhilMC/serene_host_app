// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/login_module/view/login_screen.dart';
import 'package:serene_host_app/app_modules/register_documents_upload_module/view/register_documents_upload_screen.dart';
import 'package:serene_host_app/app_modules/register_submit_module/bloc/register_submit_bloc.dart';
import 'package:serene_host_app/app_utils/app_helper.dart';
import 'package:serene_host_app/app_widgets/normal_text_field.dart';
import 'package:serene_host_app/app_widgets/overlay_loader_widget.dart';

class RegisterSubmitScreen extends StatefulWidget {
  final int newHostId;
  const RegisterSubmitScreen({
    super.key,
    required this.newHostId,
  });

  @override
  State<RegisterSubmitScreen> createState() => _RegisterSubmitScreenState();
}

class _RegisterSubmitScreenState extends State<RegisterSubmitScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _rentingRateController = TextEditingController();

  bool _isAgreed = false;

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    _rentingRateController.dispose();
    super.dispose();
  }

  void _handlePrevious() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterDocumentsUploadScreen(
          newHostId: widget.newHostId,
        ),
      ),
    );
  }

  void _handleNext() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      if (_isAgreed) {
        final registerSubmitBloc = BlocProvider.of<RegisterSubmitBloc>(context);

        registerSubmitBloc.add(RegisterSubmitEvent.registrationSubmitted(
          widget.newHostId,
          double.parse(_rentingRateController.text.trim()),
        ));
      } else {
        AppHelper.showErrorDialogue(
          context,
          "You have to accept terms & conditions",
        );
      }
    } else {
      AppHelper.showErrorDialogue(
        context,
        "You have to enter rate.",
      );
    }
  }

  Color getColor(Set<WidgetState> states) {
    const Set<WidgetState> interactiveStates = <WidgetState>{
      WidgetState.pressed,
      WidgetState.hovered,
      WidgetState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return AppColors.primaryColor;
    }
    return AppColors.tertiaryColor;
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
              "Finalization",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: BlocConsumer<RegisterSubmitBloc, RegisterSubmitState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.status == "success") {
                AppHelper.showCustomSnackBar(
                  context,
                  "Submitting Registration Successfull.",
                );

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              } else {
                AppHelper.showErrorDialogue(
                  context,
                  "Submitting Registration Failed.",
                );
              }
            },
            failure: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              "Submitting Registration Failed: $errorMessage",
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
                        NormalTextField(
                          textEditingController: _rentingRateController,
                          validatorFunction: (value) {
                            // add email validation
                            if (value == null || value.isEmpty) {
                              return 'Please enter rate';
                            }

                            return null;
                          },
                          labelText: 'Rate',
                          hintText: 'Enter your renting rate',
                          textInputType: TextInputType.number,
                        ),
                        _gap(context),
                        CheckboxListTile(
                          value: _isAgreed,
                          onChanged: (bool? value) {
                            setState(() {
                              _isAgreed = value!;
                            });
                          },
                          title: RichText(
                            text: TextSpan(
                              text: "I accept the ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "terms and conditions",
                                  style: TextStyle(
                                    color: Colors.lightBlue,
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              ],
                            ),
                          ),
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
