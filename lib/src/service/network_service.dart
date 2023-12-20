import 'dart:convert';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:weather_app/src/model/weather_model.dart';

class WeatherService {
  final String apiKey;
  static const String _baseUrl = "https://api.openweathermap.org/data/2.5/weather";
  WeatherService({required this.apiKey});

  Future<WeatherModel> getAllWeather(String cityName) async {
    final uri = Uri.parse(
      "$_baseUrl?q=$cityName&appid=$apiKey&units=metric",
    );
    Response response = await http.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("error dio status code ${response.statusCode}");
    }
  }

  Future<String>locationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    List<Placemark> placeMark =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    String? city = placeMark[0].locality;
    return city ?? "";
  }
}
