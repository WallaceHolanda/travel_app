import 'package:flutter/material.dart';
import 'package:travel_app/utils/enum/app_images.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> images = [
    AppImages.welcomeOne.caminho,
    AppImages.welcomeTwo.caminho,
    AppImages.welcomeThree.caminho,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (_, index) {
          return Container();
        },
      ),
    );
  }
}
