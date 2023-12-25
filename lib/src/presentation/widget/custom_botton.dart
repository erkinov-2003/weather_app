import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:weather_app/src/core/constants/app_icons.dart';
import 'package:weather_app/src/presentation/widget/custom_card.dart';

class CustomBottomItem extends StatelessWidget {
  const CustomBottomItem({
    super.key,
    required this.image,
    required this.cloud,
    required this.humidity,
    required this.wind,
    required this.snow,
    required this.pressure,
    required this.sunset,
  });
  final String image;
  final String cloud;
  final String humidity;
  final String wind;
  final String snow;
  final String pressure;
  final String sunset;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              const Color.fromARGB(255, 44, 45, 88).withOpacity(0.5),
              const Color.fromARGB(255, 74, 42, 138).withOpacity(0.5)
            ],
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hourly Forecast",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  Text(
                    "Hourly Forecast",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 2,
              width: double.infinity,
              child: ColoredBox(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(image: AppIcons.cloudIcon, data: cloud),
                  CustomCard(image: AppIcons.humidity, data: humidity),
                  CustomCard(image: AppIcons.windIcon, data: wind),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(image: AppIcons.snowIcon, data: snow),
                  CustomCard(image: AppIcons.sunsetIcon, data: sunset),
                  CustomCard(image: AppIcons.pressure, data: pressure),
                ],
              ),
            )
          ],
        ),
      ),
    ).asGlass(
      tintColor: Colors.transparent,
    );
  }
}