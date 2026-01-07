import 'package:dartz/dartz.dart';
import 'package:data_float/core/Failures/failures.dart';
import 'package:data_float/feature/PropertyListing/Domain/entity/propertylisting.dart';
import 'package:data_float/feature/PropertyListing/Domain/repository/property_listing_repo.dart';

class PropertyListingUsecase {
  final PropertylistingRepo repo;

  PropertyListingUsecase({required this.repo});
  Future<Either<Failures, List<PropertyListingEntity>>> getPropertyDetails() {
    return repo.getPropertyDetails();
  }
}
