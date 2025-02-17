class BookingHistory {
  final String bookingId;
  final String guestName;
  final String guestEmail;
  final String guestPhone;
  final String profilePicture;
  final String propertyName;
  final String propertyId;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  final int stayDuration;
  final int numberOfGuests;
  final double totalPrice;
  final double amountPaid;
  final double balanceDue;
  final String paymentStatus;
  final String paymentMethod;
  final String bookingStatus;
  final DateTime bookingDate;
  final String? reviewTitle;
  final String? reviewDescription;
  final int? reviewRating;

  BookingHistory({
    required this.bookingId,
    required this.guestName,
    required this.guestEmail,
    required this.guestPhone,
    required this.profilePicture,
    required this.propertyName,
    required this.propertyId,
    required this.checkInDate,
    required this.checkOutDate,
    required this.stayDuration,
    required this.numberOfGuests,
    required this.totalPrice,
    required this.amountPaid,
    required this.balanceDue,
    required this.paymentStatus,
    required this.paymentMethod,
    required this.bookingStatus,
    required this.bookingDate,
    this.reviewTitle,
    this.reviewDescription,
    this.reviewRating,
  });

  @override
  String toString() {
    return '''
    Booking ID: $bookingId
    Guest: $guestName, Email: $guestEmail, Phone: $guestPhone
    Property: $propertyName (ID: $propertyId)
    Check-in: ${checkInDate.toLocal()}, Check-out: ${checkOutDate.toLocal()}
    Stay Duration: $stayDuration nights, Guests: $numberOfGuests
    Total Price: \$$totalPrice, Paid: \$$amountPaid, Balance: \$$balanceDue
    Payment Status: $paymentStatus, Method: $paymentMethod
    Booking Status: $bookingStatus, Date: ${bookingDate.toLocal()}
    Review: ${reviewRating ?? "N/A"} ⭐ - ${reviewTitle ?? "No Title"}
    Feedback: ${reviewDescription ?? "No Feedback"}
    ''';
  }
}
