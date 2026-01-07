class PropertyListingEntity {
  final String propertyRt;
  final int cmnCmnKey;
  final String agentName;
  final String agentOffice;
  final List<String> pictures;
  final String mlsNumber;
  final int sqft;
  final int beds;
  final int baths;
  final int price;
  final String status;
  final String propertyType;
  final String address;
  final String remarks;
  final bool displayAddress;
  final int photoCount;

  const PropertyListingEntity({
    required this.propertyRt,
    required this.cmnCmnKey,
    required this.agentName,
    required this.agentOffice,
    required this.pictures,
    required this.mlsNumber,
    required this.sqft,
    required this.beds,
    required this.remarks,
    required this.status,
    required this.price,
    required this.baths,
    required this.propertyType,
    required this.address,
    required this.displayAddress,
    required this.photoCount,
  });
}
