class WeatherModel {
  final String cityName;
  final double temperature;
  final String mainCondition;

  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json["main"],
      temperature: json["main"].toDouble(),
      mainCondition: json["weather"][0]["main"],
    );
  }
}
