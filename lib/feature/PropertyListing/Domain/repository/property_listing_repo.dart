import 'package:dartz/dartz.dart';
import 'package:data_float/core/Failures/failures.dart';
import 'package:data_float/feature/PropertyListing/Domain/entity/propertylisting.dart';

abstract class PropertylistingRepo {
  Future<Either<Failures, List<PropertyListingEntity>>> getPropertyDetails();
}
