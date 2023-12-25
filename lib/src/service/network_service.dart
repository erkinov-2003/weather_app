class WeatherService {
  const WeatherService();

  static String animationWeather(String? condition) {
    if (condition == null) return "assets/lottie/sun.json";
    switch (condition.toLowerCase()) {
      case "clouds":
      case "mist":
      case "smoke":
      case "haze":
      case "dust":
      case "fog":
        return "assets/lottie/cloud.json";
      case "rain":
      case "shower rain":
        return "assets/lottie/rain.json";
      case "thunderstorm":
        return "assets/lottie/thundersotrn.json";
      case "snow":
        return "assets/lottie/snow.json";
      case "clear":
        return "assets/lottie/sun.json";
      default:
        return "assets/lottie/sun.json";
    }
  }
}
