part of 'proplisting_bloc.dart';

@freezed
class ProplistingEvent with _$ProplistingEvent {
  factory ProplistingEvent.getpropertyList() = GetpropertyList;
  factory ProplistingEvent.propertyListingfilterevent(String data) =
      PropertyListingfilterevent;
}
