import 'package:flutter/material.dart';

class CustomHomeScreenItem extends StatelessWidget {
  const CustomHomeScreenItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.sunny,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.sunny_snowing,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.swipe_left_alt_sharp,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text(
                  "SUNSET",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  "7:00",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
              width: 1,
              child: ColoredBox(
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  "WINT",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  "4m/s",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
              width: 1,
              child: ColoredBox(
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  "TEMPERATURE",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  "23c",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
