import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:u_can_park/geoLocatorUsage.dart';
import 'package:u_can_park/mapScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final locatorUsage = GeoLocatorUsage();
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context)=> locatorUsage.getLocation(),
      initialData: locatorUsage.getLocation(),
      child: MaterialApp(
        title: 'UCanPark',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            //Color scheme makes use of analogous colors.
            primarySwatch: Colors.teal,
          ).copyWith(
              secondary: Colors.tealAccent
          ),
          textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.green))
        ),
        //home: MyHomePage(title: 'UCanPark'),
       home: MapScreen(),
      ),
    );
    }
}
