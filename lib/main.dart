import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_blocs/bloc/booking_details_bloc.dart';
import 'package:serene_host_app/app_modules/booking_history_details_module/bloc/user_review_bloc.dart';
import 'package:serene_host_app/app_modules/booking_history_module/bloc/booking_history_bloc.dart';
import 'package:serene_host_app/app_modules/event_module/bloc/add_event_bloc/add_event_bloc.dart';
import 'package:serene_host_app/app_modules/event_module/bloc/events_history_bloc/events_history_bloc.dart';
import 'package:serene_host_app/app_modules/event_module/bloc/get_upcoming_events_bloc/get_upcoming_events_bloc.dart';
import 'package:serene_host_app/app_modules/home_page_module/bloc/booking_reviews_bloc/booking_reviews_bloc.dart';
import 'package:serene_host_app/app_modules/home_page_module/bloc/host_bookings_bloc/host_bookings_bloc.dart';
import 'package:serene_host_app/app_modules/home_page_module/bloc/profile_data_bloc/profile_data_bloc.dart';
import 'package:serene_host_app/app_modules/introduction_screen_module/view/introduction_screen.dart';
import 'package:serene_host_app/app_modules/login_module/bloc/host_login_bloc.dart';
import 'package:serene_host_app/app_modules/register_documents_upload_module/bloc/document_upload_bloc.dart';
import 'package:serene_host_app/app_modules/register_personal_information_module/bloc/personal_details_registration_bloc.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/bloc/property_details_register_bloc.dart';
import 'package:serene_host_app/app_modules/register_submit_module/bloc/register_submit_bloc.dart';
import 'package:serene_host_app/app_modules/report_user_module/bloc/report_user_bloc.dart';

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
        BlocProvider(
          create: (context) => DocumentUploadBloc(),
        ),
        BlocProvider(
          create: (context) => RegisterSubmitBloc(),
        ),
        BlocProvider(
          create: (context) => HostLoginBloc(),
        ),
        BlocProvider(
          create: (context) => ProfileDataBloc(),
        ),
        BlocProvider(
          create: (context) => AddEventBloc(),
        ),
        BlocProvider(
          create: (context) => GetUpcomingEventsBloc(),
        ),
        BlocProvider(
          create: (context) => EventsHistoryBloc(),
        ),
        BlocProvider(
          create: (context) => HostBookingsBloc(),
        ),
        BlocProvider(
          create: (context) => BookingDetailsBloc(),
        ),
        BlocProvider(
          create: (context) => BookingHistoryBloc(),
        ),
        BlocProvider(
          create: (context) => BookingReviewsBloc(),
        ),
        BlocProvider(
          create: (context) => ReportUserBloc(),
        ),
        BlocProvider(
          create: (context) => UserReviewBloc(),
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
