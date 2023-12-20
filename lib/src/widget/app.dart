import "package:flutter/material.dart";
import "package:weather_app/src/presentation/screens/home_screen.dart";
import "package:weather_app/src/presentation/screens/intro_screen.dart";

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
