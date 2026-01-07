import 'package:dartz/dartz.dart';
import 'package:data_float/core/Failures/failures.dart';
import 'package:data_float/feature/PropertyListing/Data/datasource/property_listing_source.dart';
import 'package:data_float/feature/PropertyListing/Domain/entity/propertylisting.dart';
import 'package:data_float/feature/PropertyListing/Domain/repository/property_listing_repo.dart';

class PropertylistingRepoimpl extends PropertylistingRepo {
  final PropertyListingsource datasource;

  PropertylistingRepoimpl({required this.datasource});
  @override
  Future<Either<Failures, List<PropertyListingEntity>>>
  getPropertyDetails() async {
    try {
      print("indside the repo impl");
      final result = await datasource.getPropertyDetails();
      final entities = result.map((model) {
        return PropertyListingEntity(
          propertyRt: model.propertyRt,
          cmnCmnKey: model.cmnCmnKey,
          agentName: model.agentName,
          agentOffice: model.agentOffice,
          pictures: model.pictures,
          mlsNumber: model.mlsNumber,
          sqft: model.sqft,
          beds: model.beds,
          baths: model.baths,
          price: model.price,
          status: model.status,
          propertyType: model.propertyType,
          address: model.address,
          remarks: model.remarks,
          displayAddress: model.displayAddress,
          photoCount: model.photoCount,
        );
      }).toList();
 
      return Right(entities);
    } catch (e) {
      return Left(Failures(message: e.toString()));
    }
  }
}
