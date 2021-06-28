import 'package:geolocator/geolocator.dart';

class GeoLocatorUsage{
  Future<Position> getLocation() async {
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high, forceAndroidLocationManager: false);
  }
}
