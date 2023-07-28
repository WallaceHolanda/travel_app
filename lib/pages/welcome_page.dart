import 'package:flutter/material.dart';
import 'package:travel_app/utils/enum/app_images.dart';
import 'package:travel_app/widgets/large_text_widget.dart';

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
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(images[index]),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: const Row(
                children: [
                  Column(
                    children: [
                      LargeTextWidget(text: "Trips"),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
