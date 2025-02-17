import 'dart:math';
import 'package:faker/faker.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/booking.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/booking_history.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/booking_review.dart';

// Utility function to generate random bookings
List<Booking> generateRandomBookings(int count) {
  final faker = Faker();
  final random = Random();
  final statuses = ["Confirmed", "Pending", "Cancelled"];

  return List.generate(count, (index) {
    String guest = faker.person.name();
    DateTime checkIn = DateTime.now().add(Duration(days: random.nextInt(30)));
    DateTime checkOut = checkIn.add(Duration(days: random.nextInt(7) + 1));
    int numGuests = random.nextInt(4) + 1;
    String status = statuses[random.nextInt(statuses.length)];
    double totalPrice = 100 + random.nextDouble() * 400;
    double amountPaid = random.nextBool() ? totalPrice : totalPrice / 2;
    double balanceDue = totalPrice - amountPaid;
    String paymentStatus = amountPaid == totalPrice ? "Paid" : "Pending";
    String email = faker.internet.email();
    String phone = faker.phoneNumber.us();
    String bookingId = "BK${random.nextInt(99999).toString().padLeft(5, '0')}";
    DateTime timeOfBooking =
        DateTime.now().subtract(Duration(days: random.nextInt(60)));

    return Booking(
      guestName: guest,
      checkInDate: checkIn,
      checkOutDate: checkOut,
      numGuests: numGuests,
      bookingStatus: status,
      totalPrice: totalPrice,
      amountPaid: amountPaid,
      balanceDue: balanceDue,
      paymentStatus: paymentStatus,
      guestEmail: email,
      guestPhone: phone,
      bookingId: bookingId,
      timeOfBooking: timeOfBooking,
    );
  });
}

// Utility function to generate random booking reviews
List<BookingReview> generateRandomReviews(int count) {
  final faker = Faker();
  final random = Random();
  return List.generate(count, (_) {
    DateTime checkInDate = faker.date
        .dateTimeBetween(DateTime(2024, 1, 1), DateTime(2025, 12, 31));
    int stayDuration = random.nextInt(10) + 1;
    DateTime checkOutDate = checkInDate.add(Duration(days: stayDuration));

    return BookingReview(
      reviewId: faker.guid.guid(),
      bookingId: faker.guid.guid(),
      propertyId: faker.guid.guid(),
      userId: faker.guid.guid(),
      hostId: faker.guid.guid(),
      reviewDate: DateTime.now().subtract(Duration(days: random.nextInt(365))),
      stayDuration: stayDuration,
      checkInDate: checkInDate,
      checkOutDate: checkOutDate,
      overallRating: random.nextDouble() * 4 + 1,
      cleanlinessRating: random.nextDouble() * 4 + 1,
      communicationRating: random.nextDouble() * 4 + 1,
      accuracyRating: random.nextDouble() * 4 + 1,
      locationRating: random.nextDouble() * 4 + 1,
      checkInExperienceRating: random.nextDouble() * 4 + 1,
      valueForMoneyRating: random.nextDouble() * 4 + 1,
      reviewTitle: faker.lorem.sentence(),
      reviewDescription: faker.lorem.sentences(random.nextInt(3) + 2).join(' '),
      pros: List.generate(random.nextInt(3) + 1, (_) => faker.lorem.word()),
      cons: List.generate(random.nextInt(3) + 1, (_) => faker.lorem.word()),
      suggestionsForImprovement:
          random.nextBool() ? faker.lorem.sentence() : null,
      wouldRecommend: random.nextBool(),
      uploadedPhotos: random.nextBool()
          ? List.generate(
              random.nextInt(3) + 1,
              (_) => faker.image.loremPicsum(),
            )
          : null,
      privateFeedback: random.nextBool() ? faker.lorem.sentence() : null,
      hostResponse: random.nextBool() ? faker.lorem.sentence() : null,
      helpfulVotes: random.nextInt(50),
    );
  });
}

// Utility function to generate random booking history
List<BookingHistory> generateRandomBookingHistory(int count) {
  final faker = Faker();
  final random = Random();
  List<String> paymentStatuses = ["Paid", "Pending", "Partially Paid"];
  List<String> paymentMethods = ["Credit Card", "PayPal", "Bank Transfer"];
  List<String> bookingStatuses = [
    "Completed",
    "Cancelled",
    "No-Show",
    "Ongoing"
  ];

  return List.generate(count, (_) {
    DateTime checkIn = faker.date
        .dateTimeBetween(DateTime(2024, 1, 1), DateTime(2025, 12, 31));
    DateTime checkOut = checkIn.add(Duration(days: random.nextInt(7) + 1));
    double totalPrice = random.nextDouble() * 500 + 100;
    double amountPaid =
        random.nextBool() ? totalPrice : totalPrice * random.nextDouble();
    double balanceDue = totalPrice - amountPaid;
    String bookingStatus =
        bookingStatuses[random.nextInt(bookingStatuses.length)];

    return BookingHistory(
      bookingId: faker.guid.guid(),
      guestName: faker.person.name(),
      guestEmail: faker.internet.email(),
      guestPhone: faker.phoneNumber.us(),
      profilePicture: faker.image.loremPicsum(),
      propertyName: faker.address.streetName(),
      propertyId: faker.guid.guid(),
      checkInDate: checkIn,
      checkOutDate: checkOut,
      stayDuration: checkOut.difference(checkIn).inDays,
      numberOfGuests: random.nextInt(4) + 1,
      totalPrice: totalPrice,
      amountPaid: amountPaid,
      balanceDue: balanceDue,
      paymentStatus: paymentStatuses[random.nextInt(paymentStatuses.length)],
      paymentMethod: paymentMethods[random.nextInt(paymentMethods.length)],
      bookingStatus: bookingStatus,
      bookingDate: faker.date.dateTimeBetween(DateTime(2023, 1, 1), checkIn),
      reviewTitle:
          (bookingStatus == "Completed") ? faker.lorem.sentence() : null,
      reviewDescription: (bookingStatus == "Completed")
          ? faker.lorem.sentences(2).join(" ")
          : null,
      reviewRating:
          (bookingStatus == "Completed") ? random.nextInt(5) + 1 : null,
    );
  });
}

Map<String, dynamic> getDummyProfileData() {
  final faker = Faker();
  String profilePicture = faker.image.loremPicsum();
  String idProof = faker.image.loremPicsum();
  List<String> propertyImages =
      List.generate(3, (_) => faker.image.loremPicsum());
  return {
    "fullName": "John Doe",
    "username": "john_host",
    "email": "john.doe@example.com",
    "phone": "+1234567890",
    "password": "password123",
    "profilePicture": profilePicture,
    "propertyType": "Apartment",
    "address": "123 Main Street, New York, USA",
    "latitude": 40.7128,
    "longitude": -74.0060,
    "description": "A cozy and well-furnished apartment in NYC.",
    "amenities": ["WiFi", "Kitchen", "TV", "Air Conditioning"],
    "rentingRate": 120,
    "idProof": idProof,
    "propertyImages": propertyImages,
  };
}
