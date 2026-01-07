import 'package:data_float/core/repository/dataService.dart';
import 'package:data_float/feature/PropertyListing/Data/datasource/property_listing_source.dart';
import 'package:data_float/feature/PropertyListing/Data/repository/propertylisting_repoimpl.dart';
import 'package:data_float/feature/PropertyListing/Domain/repository/property_listing_repo.dart';
import 'package:data_float/feature/PropertyListing/Domain/usecase/property_listing_usecase.dart';
import 'package:data_float/feature/PropertyListing/Presenatation/bloc/proplisting/proplisting_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<PropertyListingsource>(
    () => PropertyListingsourceImpl(service: sl()),
  );

  sl.registerLazySingleton<PropertylistingRepo>(
    () => PropertylistingRepoimpl(datasource: sl()),
  );
  sl.registerLazySingleton<PropertyListingUsecase>(
    () => PropertyListingUsecase(repo: sl()),
  );
  sl.registerLazySingleton<Dataservice>(() => Dataservice());

  /////Bloc
  sl.registerFactory(() => ProplistingBloc(sl()));
}
