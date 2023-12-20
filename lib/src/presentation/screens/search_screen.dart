import 'package:flutter/material.dart';
import 'package:weather_app/src/core/constants/app_images.dart';
import 'package:weather_app/src/presentation/widget/search_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 44, 45, 88),
                Color.fromARGB(255, 74, 42, 138),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context), 
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Weather",
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "AbhayaLibre",
                              ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: 38,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 37, 33, 69),
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                      ),
                      child: Center(
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Search for a city or airport",
                            hintStyle:
                                Theme.of(context).textTheme.titleSmall!.copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    ),
                            border: InputBorder.none,
                            icon: const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Image(
                                image: AssetImage(
                                  AppImages.search,
                                ),
                                height: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 600,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder:(context, index) => const Padding(
                      padding:  EdgeInsets.only(left: 10, right: 10, top: 15),
                      child:  CustomSearchCard(),
                    ) ,
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
