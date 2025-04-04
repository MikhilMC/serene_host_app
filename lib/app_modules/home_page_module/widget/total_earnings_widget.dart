import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/home_page_module/bloc/total_earnings_bloc/total_earnings_bloc.dart';
import 'package:serene_host_app/app_widgets/custom_error_widget.dart';

class TotalEarningsWidget extends StatefulWidget {
  const TotalEarningsWidget({super.key});

  @override
  State<TotalEarningsWidget> createState() => _TotalEarningsWidgetState();
}

class _TotalEarningsWidgetState extends State<TotalEarningsWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<TotalEarningsBloc>()
        .add(TotalEarningsEvent.totalEarningsFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TotalEarningsBloc, TotalEarningsState>(
      builder: (context, state) {
        if (state is TotalEarningsError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is! TotalEarningsSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }

        final totalEarningsData = state.totalEarnings;

        return Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Earnings",
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 8),
                    Text(
                      "₹${totalEarningsData.totalEarnings.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.currency_rupee,
                  size: 40,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
