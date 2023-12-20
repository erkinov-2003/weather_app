import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.image,
    required this.hour,
    required this.gradius,
  });
  final String image;
  final String hour;
  final String gradius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 70,
      child: DecoratedBox(
        decoration:  BoxDecoration(
          color: const Color.fromARGB(255, 66, 60, 105),
          border: Border.all(color: Colors.white, width: 0.4),
          borderRadius: const BorderRadius.all(
            Radius.circular(35),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              hour,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Image(
              image: AssetImage(image),
              height: 30,
            ),
            Text(
              gradius,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
