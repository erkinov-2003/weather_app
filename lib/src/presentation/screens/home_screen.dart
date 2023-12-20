import 'package:flutter/material.dart';
import 'package:weather_app/src/core/constants/app_colors.dart';
import 'package:weather_app/src/core/constants/app_images.dart';
import 'package:weather_app/src/presentation/widget/home_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 49, 55, 69),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
          child: Column(
            children: [
              Text(
                "Tashkent, Uzbekistan",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(height: 15),
              Text(
                "MONDAY 8:30 PM",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              Image.network("https://yt3.ggpht.com/ytc/AAUvwngaWHEXjvL8m7BLRpGzma5nMlHQSfnmpTdvSztH=s900-c-k-c0x00ffffff-no-rj"),
              const SizedBox(height: 50),
              Text(
                "20 C",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                "GOOD NIGHT",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                "WASIM",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const CustomHomeScreenItem(),
            ],
          ),
        ),
      ),
    );
  }
}
