import 'package:geolocator/geolocator.dart';

class GeoLocatorUsage{
  Future<Position> getLocation() async {
    var geolocator = Geolocator();
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high, locationPermissionLevel: GeolocationPermission.location);
    //TODO: Find out if this is needed for android ^^
  }
}
