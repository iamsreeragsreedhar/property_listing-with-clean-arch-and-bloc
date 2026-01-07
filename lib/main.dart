import 'package:data_float/core/di/service_locator.dart';
import 'package:data_float/core/routes/routes.dart';
import 'package:data_float/feature/PropertyListing/Presenatation/property_listing.dart';
import 'package:data_float/feature/PropertyListing/Presenatation/bloc/proplisting/proplisting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ProplistingBloc(sl()))],
      child: MaterialApp.router(
        routerConfig: routes,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      ),
    );
  }
}
