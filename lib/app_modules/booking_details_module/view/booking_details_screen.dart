// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_blocs/bloc/booking_details_bloc.dart';
import 'package:serene_host_app/app_modules/booking_details_module/widget/details_row.dart';
import 'package:serene_host_app/app_modules/booking_details_module/widget/section_card.dart';
import 'package:serene_host_app/app_utils/app_helper.dart';
import 'package:serene_host_app/app_widgets/custom_error_widget.dart';

class BookingDetailsScreen extends StatefulWidget {
  final int bookingId;
  const BookingDetailsScreen({
    super.key,
    required this.bookingId,
  });

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<BookingDetailsBloc>()
        .add(BookingDetailsEvent.bookingDetailsFetched(widget.bookingId));
  }

  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat.currency(symbol: "₹");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Details"),
      ),
      body: BlocBuilder<BookingDetailsBloc, BookingDetailsState>(
        builder: (context, state) {
          if (state is BookingDetailsError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is! BookingDetailsSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }

          final hostBooking = state.hostBooking;

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Guest Info
                SectionCard(
                  title: "Guest Information",
                  child: ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.person)),
                    title: Text(
                      hostBooking.userName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("📧 ${hostBooking.userEmail}"),
                        Text("📞 ${hostBooking.userPhone}"),
                      ],
                    ),
                    subtitleTextStyle: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Booking Info
                SectionCard(
                  title: "Booking Details",
                  child: Column(
                    children: [
                      DetailsRow(
                        label: "Booking ID",
                        value: hostBooking.id.toString(),
                      ),
                      DetailsRow(
                        label: "Check-in",
                        value: DateFormat.yMMMd().format(hostBooking.startDate),
                      ),
                      DetailsRow(
                        label: "Check-out",
                        value: DateFormat.yMMMd().format(hostBooking.endDate),
                      ),
                      DetailsRow(
                        label: "Guests",
                        value: "${hostBooking.noOfGuests}",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // Payment Info
                SectionCard(
                  title: "Payment Details",
                  child: Column(
                    children: [
                      DetailsRow(
                        label: "Booking Price",
                        value: currencyFormat
                            .format(double.parse(hostBooking.totalCost)),
                      ),
                      DetailsRow(
                        label: "Platform Fee",
                        value: currencyFormat
                            .format(double.parse(hostBooking.platformFee)),
                      ),
                      DetailsRow(
                        label: "Total Price",
                        value: currencyFormat.format(
                            double.parse(hostBooking.totalCost) +
                                double.parse(hostBooking.platformFee)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Payment Status:",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Chip(
                            label: Text(
                              hostBooking.paymentStatus.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: AppHelper.getPaymentStatusColor(
                              hostBooking.paymentStatus,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),

                // Action Buttons
                // Row(
                //   children: [
                //     Expanded(
                //       child: ElevatedButton.icon(
                //         icon: const Icon(Icons.check),
                //         label: const Text(
                //           "Confirm",
                //           style: TextStyle(color: Colors.white),
                //         ),
                //         style: ElevatedButton.styleFrom(
                //           backgroundColor: Colors.green,
                //           iconColor: Colors.white,
                //         ),
                //         onPressed: () {
                //           ScaffoldMessenger.of(context).showSnackBar(
                //             const SnackBar(
                //               content: Text(
                //                 "Booking Confirmed",
                //               ),
                //             ),
                //           );
                //         },
                //       ),
                //     ),
                //     const SizedBox(width: 10),
                //     Expanded(
                //       child: ElevatedButton.icon(
                //         icon: const Icon(Icons.cancel),
                //         label: const Text(
                //           "Cancel",
                //           style: TextStyle(color: Colors.white),
                //         ),
                //         style: ElevatedButton.styleFrom(
                //           backgroundColor: Colors.red,
                //           iconColor: Colors.white,
                //         ),
                //         onPressed: () {
                //           ScaffoldMessenger.of(context).showSnackBar(
                //             const SnackBar(
                //               content: Text(
                //                 "Booking Cancelled",
                //               ),
                //             ),
                //           );
                //         },
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
