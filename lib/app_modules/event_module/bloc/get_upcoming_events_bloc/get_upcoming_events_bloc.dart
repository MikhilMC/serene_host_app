import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/event_module/model/event_model/event_model.dart';
import 'package:serene_host_app/app_modules/event_module/service/get_upcoming_events.dart';

part 'get_upcoming_events_event.dart';
part 'get_upcoming_events_state.dart';
part 'get_upcoming_events_bloc.freezed.dart';

class GetUpcomingEventsBloc
    extends Bloc<GetUpcomingEventsEvent, GetUpcomingEventsState> {
  GetUpcomingEventsBloc() : super(_Initial()) {
    on<_upcomingEventsFetched>((event, emit) async {
      emit(GetUpcomingEventsState.loading());
      try {
        final upcomingEvents = await getUpcomingEvents();
        if (upcomingEvents.isNotEmpty) {
          emit(GetUpcomingEventsState.success(upcomingEvents));
        } else {
          emit(GetUpcomingEventsState.empty());
        }
      } catch (e) {
        emit(GetUpcomingEventsState.error(e.toString()));
      }
    });
  }
}
