// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:serene_host_app/app_blocs/bloc/booking_details_bloc.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_constants/app_urls.dart';
import 'package:serene_host_app/app_modules/booking_history_details_module/widget/history_details_row.dart';
import 'package:serene_host_app/app_modules/booking_history_details_module/widget/history_section_card.dart';
import 'package:serene_host_app/app_modules/report_user_module/view/report_user_screen.dart';
import 'package:serene_host_app/app_widgets/custom_error_widget.dart';

class BookingHistoryDetailsScreen extends StatefulWidget {
  final int bookingId;
  const BookingHistoryDetailsScreen({
    super.key,
    required this.bookingId,
  });

  @override
  State<BookingHistoryDetailsScreen> createState() =>
      _BookingHistoryDetailsScreenState();
}

class _BookingHistoryDetailsScreenState
    extends State<BookingHistoryDetailsScreen> {
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
        title: const Text("Booking History Details"),
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

          final bookingDetails = state.hostBooking;
          final int duration = bookingDetails.endDate
              .difference(bookingDetails.startDate)
              .inDays;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Guest Info
                HistorySectionCard(
                  title: "Guest Information",
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                        "${AppUrls.baseUrl}${bookingDetails.profilePicture}",
                      ),
                    ),
                    title: Text(
                      bookingDetails.userName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("📧 ${bookingDetails.userEmail}"),
                        Text("📞 ${bookingDetails.userPhone}"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Booking Info
                HistorySectionCard(
                  title: "Booking Details",
                  child: Column(
                    children: [
                      HistoryDetailsRow(
                        label: "Booking ID",
                        value: widget.bookingId.toString(),
                      ),
                      HistoryDetailsRow(
                        label: "Check-in",
                        value:
                            DateFormat.yMMMd().format(bookingDetails.startDate),
                      ),
                      HistoryDetailsRow(
                        label: "Check-out",
                        value:
                            DateFormat.yMMMd().format(bookingDetails.endDate),
                      ),
                      HistoryDetailsRow(
                        label: "Stay Duration",
                        value: "$duration ${duration > 1 ? "nights" : "night"}",
                      ),
                      HistoryDetailsRow(
                        label: "Guests",
                        value: "${bookingDetails.noOfGuests}",
                      ),
                      HistoryDetailsRow(
                        label: "Booking Date",
                        value: DateFormat.yMMMd()
                            .format(bookingDetails.bookingDate),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Booking Status:",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Chip(
                            label: Text(
                              _formatBookingStatus(
                                bookingDetails.bookingStatus,
                              ),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: _getBookingStatusColor(
                              bookingDetails.bookingStatus,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // Payment Info
                HistorySectionCard(
                  title: "Payment Details",
                  child: Column(
                    children: [
                      HistoryDetailsRow(
                        label: "Total Price",
                        value: currencyFormat
                            .format(double.parse(bookingDetails.totalCost)),
                      ),
                      HistoryDetailsRow(
                        label: "Platform Fee",
                        value: currencyFormat
                            .format(double.parse(bookingDetails.platformFee)),
                      ),
                      HistoryDetailsRow(
                        label: "Refund Amount",
                        value: currencyFormat
                            .format(double.parse(bookingDetails.refundAmount)),
                      ),
                      HistoryDetailsRow(
                        label: "Last Payment Method",
                        value: bookingDetails.paymentMethod,
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
                              _formatPaymentStatus(
                                bookingDetails.paymentStatus,
                              ),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: _getPaymentStatusColor(
                              bookingDetails.paymentStatus,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // Review Section (if available)
                // if (widget.booking.bookingStatus == "Completed" &&
                //     widget.booking.reviewTitle != null)
                //   HistorySectionCard(
                //     title: "Guest Review",
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           widget.booking.reviewTitle!,
                //           style: const TextStyle(
                //             fontSize: 16,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         const SizedBox(height: 6),
                //         Row(
                //           children: List.generate(
                //             widget.booking.reviewRating ?? 0,
                //             (index) => const Icon(
                //               Icons.star,
                //               color: Colors.amber,
                //               size: 20,
                //             ),
                //           ),
                //         ),
                //         const SizedBox(height: 6),
                //         Text(widget.booking.reviewDescription!),
                //       ],
                //     ),
                //   ),
                // const SizedBox(height: 16),

                // Action Buttons with a cleaner layout
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        alignment: WrapAlignment.center,
                        children: [
                          // Contact Guest Button
                          ElevatedButton.icon(
                            icon: const Icon(Icons.phone, color: Colors.white),
                            label: const Text(
                              "Contact Guest",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Calling Guest...")),
                              );
                            },
                          ),

                          // // Download Invoice Button
                          // ElevatedButton.icon(
                          //   icon: const Icon(Icons.file_download,
                          //       color: Colors.white),
                          //   label: const Text(
                          //     "Download Invoice",
                          //     style: TextStyle(color: Colors.white),
                          //   ),
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Colors.green,
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 24, vertical: 12),
                          //   ),
                          //   onPressed: () {
                          //     ScaffoldMessenger.of(context).showSnackBar(
                          //       const SnackBar(
                          //           content: Text("Invoice Downloaded")),
                          //     );
                          //   },
                          // ),

                          // Report User Button
                          if (!bookingDetails.hostReportSubmitted)
                            ElevatedButton.icon(
                              icon: const Icon(
                                Icons.report,
                                color: Colors.white,
                              ),
                              label: const Text(
                                "Report User",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 12,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ReportUserScreen(
                                      bookingId: widget.bookingId,
                                    ),
                                  ),
                                );
                              },
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String _formatBookingStatus(String bookingStatus) {
    switch (bookingStatus) {
      case "check_out":
        return "Checked Out";
      case "canceled":
        return "Canceled";
      case "check_in":
        return "Checked In";
      case "booking_initiated":
        return "Booking Initiated";
      default:
        return "Booking Completed";
    }
  }

  String _formatPaymentStatus(String paymentStatus) {
    switch (paymentStatus) {
      case "pending":
        return "Pending";
      case "success":
        return "Success";
      case "full_refund":
        return "Full Refund";
      default:
        return "Partial Refund";
    }
  }

  /// 🎨 **Get Color Based on Booking Status**
  Color _getBookingStatusColor(String status) {
    switch (status) {
      case "check_out":
        return Colors.green;
      case "canceled":
        return Colors.red;
      case "check_in":
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  /// 🎨 **Get Color Based on Payment Status**
  Color _getPaymentStatusColor(String status) {
    switch (status) {
      case "success":
        return Colors.green;
      case "pending":
        return Colors.orange;
      case "partial_refund":
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}
