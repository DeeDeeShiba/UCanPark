import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height /
                2, //takes up half of screen (1 / 2)
            width: MediaQuery.of(context).size.width, //full width of screen
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: LatLng(43.4691, 79.7000), zoom: 20),
              zoomControlsEnabled: true,
              zoomGesturesEnabled: true,
            ),
          ),
        ],
      ),
    );
  }
}
