import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/booking_history_module/bloc/booking_history_bloc.dart';
import 'package:serene_host_app/app_modules/booking_history_module/widget/booking_card.dart';

import 'package:serene_host_app/app_widgets/custom_error_widget.dart';
import 'package:serene_host_app/app_widgets/empty_list.dart';

class BookingHistoryScreen extends StatefulWidget {
  const BookingHistoryScreen({
    super.key,
  });

  @override
  State<BookingHistoryScreen> createState() => _BookingHistoryScreenState();
}

class _BookingHistoryScreenState extends State<BookingHistoryScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<BookingHistoryBloc>()
        .add(BookingHistoryEvent.bookingHistoryFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/logo_dark.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              "Booking History",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<BookingHistoryBloc, BookingHistoryState>(
        builder: (context, state) {
          if (state is BookingHistoryError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is BookingHistoryEmpty) {
            return EmptyList(
              message: "No booking history available.",
            );
          }

          if (state is! BookingHistorySuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }

          final bookingHistory = state.bookingHistory;

          return ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: bookingHistory.length,
            itemBuilder: (context, index) {
              final booking = bookingHistory[index];
              return BookingCard(booking: booking);
            },
          );
        },
      ),
    );
  }
}
