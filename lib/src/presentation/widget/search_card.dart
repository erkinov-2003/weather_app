import 'package:flutter/material.dart';
import 'package:weather_app/src/core/constants/app_images.dart';

class CustomSearchCard extends StatelessWidget {
  const CustomSearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 0.4),
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 87, 53, 177),
              Color.fromARGB(255, 57, 43, 136),
            ]),
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment(0.8, -3),
            child: Image(
              image: AssetImage(AppImages.rain),
              height: 140,
            ),
          ),
          Align(
            alignment: const Alignment(-0.7, -0.5),
            child: Text(
              "19-",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "AbhayaLibre",
                  ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.7, 0.4),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "LH - 10",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "LM - 22",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            )
          ),
          Align(
              alignment: const Alignment(-0.7, 0.7),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tashkent,Uzbekistan",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Fast find",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
