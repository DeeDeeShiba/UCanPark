import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:u_can_park/geoLocatorUsage.dart';
import 'package:u_can_park/mapScreen.dart';
import 'package:u_can_park/models/place_of_operation.dart';
import 'package:u_can_park/services/place_of_operation_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final locatorUsage = GeoLocatorUsage();
  final placesUsage =  PlacesOfOperationService();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        FutureProvider(
          create: (context) => locatorUsage.getLocation(),
          initialData: locatorUsage.getLocation(),
        ),
        ProxyProvider<Position, Future<List<PlaceOfOperation>>>( //proxy provider used to handle inputs
          update: (context, position, places) {
            return placesUsage.getPlaces(position.latitude, position.longitude);
          },
        )
      ],
      child: MaterialApp(
        title: 'UCanPark',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              //Color scheme makes use of analogous colors.
              primarySwatch: Colors.teal,
            ).copyWith(secondary: Colors.tealAccent),
            textTheme:
            const TextTheme(bodyText1: TextStyle(color: Colors.green))),
        //home: MyHomePage(title: 'UCanPark'),
        home: MapScreen(),
      ),
    );
  }
}
