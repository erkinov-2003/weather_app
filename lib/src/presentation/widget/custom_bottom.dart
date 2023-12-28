import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.083,
      width: double.infinity,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255,45, 49, 91),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Wind now",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Humidity",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Precipitation",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.020),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "20km",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "12%",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "24%",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
