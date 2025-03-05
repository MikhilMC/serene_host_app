part of 'property_details_register_bloc.dart';

@freezed
class PropertyDetailsRegisterEvent with _$PropertyDetailsRegisterEvent {
  const factory PropertyDetailsRegisterEvent.started() = _Started;
  const factory PropertyDetailsRegisterEvent.propertyDetailsRegistered(
    int hostId,
    PropertyRegistrationDetails propertyRegistrationDetails,
  ) = _propertyDetailsRegistered;
}
