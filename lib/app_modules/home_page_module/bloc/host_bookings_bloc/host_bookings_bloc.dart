import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/host_booking_model/host_booking_model.dart';
import 'package:serene_host_app/app_modules/home_page_module/service/get_host_bookings.dart';

part 'host_bookings_event.dart';
part 'host_bookings_state.dart';
part 'host_bookings_bloc.freezed.dart';

class HostBookingsBloc extends Bloc<HostBookingsEvent, HostBookingsState> {
  HostBookingsBloc() : super(_Initial()) {
    on<_hostBookingFetched>((event, emit) async {
      emit(HostBookingsState.loading());
      try {
        final hostBookings = await getCurrentHostBookings();
        if (hostBookings.isNotEmpty) {
          emit(HostBookingsState.success(hostBookings));
        } else {
          emit(HostBookingsState.empty());
        }
      } catch (e) {
        emit(HostBookingsState.error(e.toString()));
      }
    });
  }
}
