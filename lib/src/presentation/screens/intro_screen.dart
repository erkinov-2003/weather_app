import 'package:flutter/material.dart';
import 'package:weather_app/src/core/constants/app_images.dart';
import 'package:weather_app/src/presentation/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.backgroundImage),
              fit: BoxFit.cover,
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 3),
                const Image(
                  image: AssetImage(AppImages.cloud),
                ),
                Text(
                  "Weather",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins"),
                ),
                SizedBox(height: size.height * 0.020),
                Text(
                  "ForeCasts",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: const Color(0xFFDDB130),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins"),
                ),
                const Spacer(flex: 4),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFDDB130),
                    visualDensity: VisualDensity.comfortable,
                    fixedSize:  Size(size.width * 0.892, size.height * 0.071),
                  ),
                  onPressed: () => navigator(context),
                  child: Text(
                    "Get Start",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                const Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future navigator(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}
