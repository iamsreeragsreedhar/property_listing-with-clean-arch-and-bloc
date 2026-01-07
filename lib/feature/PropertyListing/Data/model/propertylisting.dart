import 'package:data_float/feature/PropertyListing/Domain/entity/propertylisting.dart';

class PropertyListingmodel extends PropertyListingEntity {
  PropertyListingmodel({
    required super.propertyRt,
    required super.cmnCmnKey,
    required super.agentName,
    required super.agentOffice,
    required super.pictures,
    required super.mlsNumber,
    required super.sqft,
    required super.beds,
    required super.remarks,
    required super.status,
    required super.price,
    required super.baths,
    required super.propertyType,
    required super.address,
    required super.displayAddress,
    required super.photoCount,
  });

  factory PropertyListingmodel.fromJson(Map<String, dynamic> json) {
    return PropertyListingmodel(
      propertyRt: json['PROPERTYRT'] ?? "",
      cmnCmnKey: json['CMNCMNKEY'] ?? 0,
      agentName: json['LISTAGENTNAME'] ?? "",
      agentOffice: json['LISTAGENTOFFICE'] ?? "",
      pictures: List<String>.from(json['PICTURE'] ?? []),
      mlsNumber: json['IDCMLSNUMBER'] ?? "",
      sqft: json['SQFT'] ?? 0,
      beds: json['BEDS'] ?? 0,
      remarks: json['IDCREMARKS'] ?? "",
      status: json['IDCSTATUS'] ?? "",
      price: json['IDCLISTPRICE'] ?? 0,
      displayAddress: json['IDCDISPLAYADDRESS'] ?? "",
      photoCount: json['MLSPHOTOCOUNT'] ?? 0,
      propertyType: json['IDCPROPERTYTYPE'] ?? "",
      baths: json['BATHSTOTAL'] ?? 0,
      address: json['IDCFULLADDRESS'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'PROPERTYRT': propertyRt,
      'CMNCMNKEY': cmnCmnKey,
      'LISTAGENTNAME': agentName,
      'LISTAGENTOFFICE': agentOffice,
      'PICTURE': pictures,
      'IDCMLSNUMBER': mlsNumber,
      'SQFT': sqft,
      'BEDS': beds,
      'IDCREMARKS': remarks,
      'IDCSTATUS': status,
      'IDCLISTPRICE': price,
      'IDCDISPLAYADDRESS': displayAddress,
      'MLSPHOTOCOUNT': photoCount,
      'IDCPROPERTYTYPE': propertyType,
      'BATHSTOTAL': baths,
      'IDCFULLADDRESS': address,
    };
  }
}
