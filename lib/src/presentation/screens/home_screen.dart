
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:weather_app/src/core/constants/app_images.dart';

import '../widget/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  alignment: const Alignment(0, -0.8),
                  child: Text(
                    "Tashkent, Uzbekistan",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: "AbhayaLibre"),
                  ),
                ),
                Align(
                  alignment: const Alignment(0, -0.7),
                  child: Text(
                    "20°",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                        ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0, -0.5),
                  child: Text(
                    "Mostly Clear",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: "AbhayaLibre",
                        ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0, -0.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "H:24°",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "AbhayaLibre",
                                ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "L:18°",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: "AbhayaLibre",
                            ),
                      ),
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment(0, 0.3),
                  child: Image(
                    image: AssetImage(AppImages.house),
                    height: 350,
                  ),
                ),
                 Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 320,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration:  BoxDecoration(
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
                      child:Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Hourly Forecast",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "Hourly Forecast",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
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
                          SizedBox(
                            height: 170,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 7,
                              itemBuilder: (context, index) {
                                return const Padding(
                                  padding: EdgeInsets.only(left: 15, top: 20),
                                  child: CustomCard(
                                    image: AppImages.cloud,
                                    gradius: "29°",
                                    hour: "12 AM",
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).asGlass(
                    tintColor: Colors.transparent,
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
