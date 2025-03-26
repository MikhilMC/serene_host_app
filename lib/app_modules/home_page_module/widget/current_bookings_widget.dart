import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/home_page_module/bloc/host_bookings_bloc/host_bookings_bloc.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/booking.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/booking_item.dart';
import 'package:serene_host_app/app_widgets/custom_error_widget.dart';
import 'package:serene_host_app/app_widgets/empty_list.dart';

class CurrentBookingsWidget extends StatefulWidget {
  final List<Booking> bookings;
  const CurrentBookingsWidget({super.key, required this.bookings});

  @override
  State<CurrentBookingsWidget> createState() => _CurrentBookingsWidgetState();
}

class _CurrentBookingsWidgetState extends State<CurrentBookingsWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<HostBookingsBloc>()
        .add(HostBookingsEvent.hostBookingFetched());
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return BlocBuilder<HostBookingsBloc, HostBookingsState>(
      builder: (context, state) {
        if (state is HostBookingsError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is HostBookingsEmpty) {
          return EmptyList(
            message: "No property bookings available",
          );
        }

        if (state is! HostBookingsSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }

        final hostBookings = state.hostBookings;
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.005),
            child: Column(
              children: [
                ...hostBookings.map(
                  (booking) => BookingItem(
                    booking: booking,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
