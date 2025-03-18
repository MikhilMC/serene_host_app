import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/event_module/class/add_event_details.dart';
import 'package:serene_host_app/app_modules/event_module/model/add_event_response_model/add_event_response_model.dart';
import 'package:serene_host_app/app_modules/event_module/service/add_event.dart';

part 'add_event_event.dart';
part 'add_event_state.dart';
part 'add_event_bloc.freezed.dart';

class AddEventBloc extends Bloc<AddEventEvent, AddEventState> {
  AddEventBloc() : super(_Initial()) {
    on<_eventAdded>((event, emit) async {
      emit(AddEventState.loading());
      try {
        final response = await addEvent(addEventDetails: event.eventDetails);
        emit(AddEventState.success(response));
      } catch (e) {
        emit(AddEventState.failure(e.toString()));
      }
    });
  }
}
