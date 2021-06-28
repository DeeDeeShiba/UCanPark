class Location{

  late final double lat;
  late final double lng;
  Location({required this.lat, required this.lng});

  //this is to map properties from the JSON object to the DART object

  Location.fromJson(Map<dynamic, dynamic> parsedJson): lat = parsedJson['lat'],
  lng = parsedJson['lng'];
}
