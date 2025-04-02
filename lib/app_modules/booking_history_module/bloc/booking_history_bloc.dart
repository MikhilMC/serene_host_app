import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:serene_host_app/app_modules/booking_history_module/model/host_booking_history_model.dart';
import 'package:serene_host_app/app_modules/booking_history_module/service/get_booking_history.dart';

part 'booking_history_bloc.freezed.dart';
part 'booking_history_event.dart';
part 'booking_history_state.dart';

class BookingHistoryBloc
    extends Bloc<BookingHistoryEvent, BookingHistoryState> {
  BookingHistoryBloc() : super(_Initial()) {
    on<_bookingHistoryFetched>((event, emit) async {
      emit(BookingHistoryState.loading());
      try {
        final bookingHistory = await getBookingHistory();
        if (bookingHistory.isNotEmpty) {
          emit(BookingHistoryState.success(bookingHistory));
        } else {
          emit(BookingHistoryState.empty());
        }
      } catch (e) {
        emit(BookingHistoryState.error(e.toString()));
      }
    });
  }
}
