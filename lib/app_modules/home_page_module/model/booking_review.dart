class BookingReview {
  final String reviewId;
  final String bookingId;
  final String propertyId;
  final String userId;
  final String hostId;
  final DateTime reviewDate;
  final int stayDuration;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  final double overallRating;
  final double cleanlinessRating;
  final double communicationRating;
  final double accuracyRating;
  final double locationRating;
  final double checkInExperienceRating;
  final double valueForMoneyRating;
  final String reviewTitle;
  final String reviewDescription;
  final List<String> pros;
  final List<String> cons;
  final String? suggestionsForImprovement;
  final bool wouldRecommend;
  final List<String>? uploadedPhotos;
  final String? privateFeedback;
  final String? hostResponse;
  final int helpfulVotes;

  BookingReview({
    required this.reviewId,
    required this.bookingId,
    required this.propertyId,
    required this.userId,
    required this.hostId,
    required this.reviewDate,
    required this.stayDuration,
    required this.checkInDate,
    required this.checkOutDate,
    required this.overallRating,
    required this.cleanlinessRating,
    required this.communicationRating,
    required this.accuracyRating,
    required this.locationRating,
    required this.checkInExperienceRating,
    required this.valueForMoneyRating,
    required this.reviewTitle,
    required this.reviewDescription,
    required this.pros,
    required this.cons,
    this.suggestionsForImprovement,
    required this.wouldRecommend,
    this.uploadedPhotos,
    this.privateFeedback,
    this.hostResponse,
    required this.helpfulVotes,
  });

  @override
  String toString() {
    return '''
    Review ID: $reviewId
    Booking ID: $bookingId
    Property ID: $propertyId
    User ID: $userId
    Host ID: $hostId
    Review Date: $reviewDate
    Stay Duration: $stayDuration nights
    Check-in Date: $checkInDate
    Check-out Date: $checkOutDate
    Ratings:
      - Overall: $overallRating
      - Cleanliness: $cleanlinessRating
      - Communication: $communicationRating
      - Accuracy: $accuracyRating
      - Location: $locationRating
      - Check-in Experience: $checkInExperienceRating
      - Value for Money: $valueForMoneyRating
    Title: $reviewTitle
    Description: $reviewDescription
    Pros: ${pros.join(', ')}
    Cons: ${cons.join(', ')}
    Suggestions: ${suggestionsForImprovement ?? "None"}
    Would Recommend: $wouldRecommend
    Uploaded Photos: ${uploadedPhotos?.join(', ') ?? "None"}
    Private Feedback: ${privateFeedback ?? "None"}
    Host Response: ${hostResponse ?? "None"}
    Helpful Votes: $helpfulVotes
    ''';
  }
}
