import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.image,
    required this.data,
  });
  final String image;
  final String data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      width: 95,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 66, 60, 105),
          border: Border.all(color: Colors.white, width: 0.4),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(image),
              height: 40,
            ),
            Text(
              data,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
