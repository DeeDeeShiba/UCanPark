import 'package:u_can_park/models/place_of_operation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PlacesOfOperationService {
  late final key = 'AIzaSyDAjXbAvs16Ntn9w6C6YpExKkX5dAF0KiE'; //API key taken from google cloud platform API


  Future<List<PlaceOfOperation>> getPlaces(double lat, double lng) async {
    late var response = await http.get('https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=parking&rankby=distance&key=$key');
    late var json = convert.jsonDecode(response.body);
    late var jsonResults = json['results'] as List;
    return jsonResults.map((place) => Place.fromJson(place)).toList();
  }

}
