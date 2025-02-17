class Booking {
  String guestName;
  DateTime checkInDate;
  DateTime checkOutDate;
  int numGuests;
  String bookingStatus;
  double totalPrice;
  double amountPaid;
  double balanceDue;
  String paymentStatus;
  String guestEmail;
  String guestPhone;
  String bookingId;
  DateTime timeOfBooking;

  Booking({
    required this.guestName,
    required this.checkInDate,
    required this.checkOutDate,
    required this.numGuests,
    required this.bookingStatus,
    required this.totalPrice,
    required this.amountPaid,
    required this.balanceDue,
    required this.paymentStatus,
    required this.guestEmail,
    required this.guestPhone,
    required this.bookingId,
    required this.timeOfBooking,
  });

  @override
  String toString() {
    return '''
    Guest: $guestName
    Check-in: ${checkInDate.toLocal()}
    Check-out: ${checkOutDate.toLocal()}
    Guests: $numGuests
    Status: $bookingStatus
    Price: \$$totalPrice (Paid: \$$amountPaid, Due: \$$balanceDue)
    Payment: $paymentStatus
    Contact: $guestEmail | $guestPhone
    Booking ID: $bookingId
    Time of Booking: ${timeOfBooking.toLocal()}
    ''';
  }
}
