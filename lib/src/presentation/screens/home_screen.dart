import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/src/core/constants/app_images.dart';
import 'package:weather_app/src/presentation/widget/custom_botton.dart';
import 'package:weather_app/src/service/network_service.dart';
import 'package:intl/intl.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final WeatherFactory weatherFactory =
      WeatherFactory("01371badeacb7733260dd4fa74dbf7ff");
  Weather? weather;

  @override
  void initState() {
    weatherFactory
        .currentWeatherByCityName("Tashkent, Uzbekistan")
        .then((value) {
      setState(() {
        weather = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Stack(
              children: [
                Align(
                  alignment: const Alignment(0, -0.4),
                  child: Text(
                    weather?.areaName ?? "",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.8, -0.8),
                  child: Text(
                     "${weather?.temperature?.celsius?.toStringAsFixed(0)}° C",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                        ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.9, -0.9),
                  child: Lottie.asset(
                    WeatherService.animationWeather(weather?.weatherMain),
                    height: 150,
                  ),
                ),
                Align(
                  alignment: const Alignment(0, -0.3),
                  child: Text(
                    DateFormat.yMMMMEEEEd().format(DateTime.now()),
                    style:
                    Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: "AbhayaLibre",
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0, 0.3),
                  child: Image(
                    image: AssetImage(AppImages.house),
                    height: 300,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomBottomItem(
                    image: "",
                    cloud: "${weather?.cloudiness ?? ""}",
                    humidity: "${weather?.humidity ?? ""}",
                    pressure: "${weather?.pressure ?? ""}",
                    snow: "${weather?.snowLastHour ?? "0.0"}",
                    sunset: "${weather?.sunset?.minute}",
                    wind: "${weather?.windDegree}",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
