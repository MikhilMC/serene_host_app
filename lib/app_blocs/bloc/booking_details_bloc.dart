import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_models/booking_details_model/booking_details_model.dart';
import 'package:serene_host_app/app_services/get_booking_details.dart';

part 'booking_details_event.dart';
part 'booking_details_state.dart';
part 'booking_details_bloc.freezed.dart';

class BookingDetailsBloc
    extends Bloc<BookingDetailsEvent, BookingDetailsState> {
  BookingDetailsBloc() : super(_Initial()) {
    on<_bookingDetailsFetched>((event, emit) async {
      emit(BookingDetailsState.loading());
      try {
        final bookingDetails = await getBookingDetails(
          bookingId: event.bookingId,
        );
        emit(BookingDetailsState.success(bookingDetails));
      } catch (e) {
        emit(BookingDetailsState.error(e.toString()));
      }
    });
  }
}
