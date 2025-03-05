import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/class/property_registration_details.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/model/property_details_registration_response_model/property_details_registration_response_model.dart';
import 'package:serene_host_app/app_modules/register_property_details_module/service/register_property_details.dart';

part 'property_details_register_event.dart';
part 'property_details_register_state.dart';
part 'property_details_register_bloc.freezed.dart';

class PropertyDetailsRegisterBloc
    extends Bloc<PropertyDetailsRegisterEvent, PropertyDetailsRegisterState> {
  PropertyDetailsRegisterBloc() : super(_Initial()) {
    on<_propertyDetailsRegistered>((event, emit) async {
      emit(PropertyDetailsRegisterState.loading());

      try {
        final response = await registerPropertyDetails(
          hostId: event.hostId,
          propertyRegistrationDetails: event.propertyRegistrationDetails,
        );

        emit(PropertyDetailsRegisterState.success(response));
      } catch (e) {
        emit(PropertyDetailsRegisterState.failure(e.toString()));
      }
    });
  }
}
