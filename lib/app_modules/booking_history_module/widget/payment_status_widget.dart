// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PaymentStatusWidget extends StatelessWidget {
  final String paymentMethod;
  final String paymentStatus;
  const PaymentStatusWidget({
    super.key,
    required this.paymentMethod,
    required this.paymentStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          _getPaymentStatusIcon(paymentStatus),
          color: _getPaymentStatusColor(paymentStatus),
          size: 16,
        ),
        const SizedBox(width: 4),
        Text(
          "${_formatPaymentStatus(paymentStatus)} (${_formatPaymentMethod(paymentMethod)})",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: _getPaymentStatusColor(paymentStatus),
          ),
        ),
      ],
    );
  }

  String _formatPaymentMethod(String paymentMethod) {
    switch (paymentMethod) {
      case "upi":
        return "UPI";
      default:
        return "Card";
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

  IconData _getPaymentStatusIcon(String paymentStatus) {
    switch (paymentStatus) {
      case "success":
        return Icons.check_circle;
      case "pending":
        return Icons.access_time;
      case "full_refund":
      case "partial_refund":
        return Icons.undo;
      default:
        return Icons.help_outline;
    }
  }

  Color _getPaymentStatusColor(String paymentStatus) {
    switch (paymentStatus) {
      case "success":
        return Colors.green;
      case "pending":
        return Colors.orange;
      case "full_refund":
      case "partial_refund":
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
