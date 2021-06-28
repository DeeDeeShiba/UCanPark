import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentPosition = Provider.of<Position>(context); //provides current position give by geoLocatorUsage.dart

    return Scaffold(
      body:Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height /
                2, //takes up half of screen (1 / 2)
            width: MediaQuery.of(context).size.width, //full width of screen
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: LatLng(currentPosition.latitude, currentPosition.longitude), zoom: 20),
              zoomControlsEnabled: true,
              zoomGesturesEnabled: true,
            ),
          ),
        ],
      ),
    );
  }
}
