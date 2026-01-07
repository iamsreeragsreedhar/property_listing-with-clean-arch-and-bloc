import 'package:data_float/feature/PropertyListing/Domain/entity/propertylisting.dart';
import 'package:data_float/feature/PropertyListing/Presenatation/property_details.dart';
import 'package:data_float/feature/PropertyListing/Presenatation/property_listing.dart';
import 'package:go_router/go_router.dart';

final GoRouter routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => listingScreen()),
    GoRoute(
      path: '/details',
      builder: (context, state) {
        final propertydetails = state.extra as PropertyListingEntity;
        return PropertyDetails(entity: propertydetails);
      },
    ),
  ],
);
