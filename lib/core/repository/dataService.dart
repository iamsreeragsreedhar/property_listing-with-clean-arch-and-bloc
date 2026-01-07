import 'dart:convert';
import 'package:data_float/feature/PropertyListing/Data/model/propertylisting.dart';
import 'package:flutter/services.dart';

 class Dataservice {
Future<List<PropertyListingmodel>> propertyDatadetails() async {
    final JsonString = await rootBundle.loadString('assets/json/listings.json');
    final List DecodedList = jsonDecode(JsonString);
    print("Decoded List: $DecodedList");
    return DecodedList.map((e) => PropertyListingmodel.fromJson(e)).toList();
  }
}
