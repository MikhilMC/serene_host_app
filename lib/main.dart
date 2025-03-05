import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/introduction_screen_module/view/introduction_screen.dart';
import 'package:serene_host_app/app_modules/register_personal_information_module/bloc/personal_details_registration_bloc.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/bloc/property_details_register_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PersonalDetailsRegistrationBloc(),
        ),
        BlocProvider(
          create: (context) => PropertyDetailsRegisterBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Serene Host App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryColor,
          ),
          useMaterial3: true,
        ),
        home: IntroductionScreen(),
      ),
    );
  }
}
