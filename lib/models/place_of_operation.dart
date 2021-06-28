import 'package:u_can_park/models/geometry.dart';

class PlaceOfOperation {
  late final String name;
  late final double rating;
  late final Geometry geometry;
  late final String nearBy;

  PlaceOfOperation(
      {required this.geometry,
      required this.name,
      required this.rating,
      required this.nearBy});

  PlaceOfOperation.fromJson(Map<dynamic, dynamic> parsedJson)
      : name = parsedJson['name'],
        rating = (parsedJson['rating'] != null)
            ? parsedJson['rating'].toDouble()
            : null,
        nearBy = parsedJson['nearBy'],
        geometry = Geometry.fromJson(parsedJson['geometry']);
}
