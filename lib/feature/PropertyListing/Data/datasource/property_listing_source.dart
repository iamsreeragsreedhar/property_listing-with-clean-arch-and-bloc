import 'dart:convert';

import 'package:data_float/core/repository/dataService.dart';
import 'package:data_float/feature/PropertyListing/Data/model/propertylisting.dart';
import 'package:flutter/services.dart';

abstract class PropertyListingsource {
  Future<List<PropertyListingmodel>> getPropertyDetails();
}

class PropertyListingsourceImpl extends PropertyListingsource {
  final Dataservice service;

  PropertyListingsourceImpl({required this.service});
  @override
  Future<List<PropertyListingmodel>> getPropertyDetails() async {
    try {
      final JsonString = await rootBundle.loadString(
        'assets/json/listings.json',
      );

      final Map<String, dynamic> decodedMap = jsonDecode(JsonString);
      // print("decode $decodedMap");
      final List dataList = decodedMap['data'];
      // print("dataList $dataList");

      return dataList.map((e) => PropertyListingmodel.fromJson(e)).toList();
    } catch (e) {
      print("Datasource Error: $e");
      throw Exception(e.toString());
    }
  }
}
