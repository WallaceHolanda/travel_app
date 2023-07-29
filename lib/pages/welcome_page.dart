import 'package:flutter/material.dart';
import 'package:travel_app/utils/enums/enums.dart';
import 'package:travel_app/widgets/widgets.dart';

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
              margin: const EdgeInsets.only(top: 140, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LargeTextWidget(text: AppStrings.trips.texto),
                      NormalTextWidget(
                        text: AppStrings.mountain.texto,
                        size: 30,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 240,
                        child: NormalTextWidget(
                          text: AppStrings.mountainHikesGiveYou.texto,
                          size: 14,
                          color: AppColors.textColor2.color,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const ResponsiveButtonWidget(),
                    ],
                  ),
                  Column(
                    children: List.generate(
                      3,
                      (dotIndex) {
                        return DotWidget(
                          color: dotIndex == index
                              ? AppColors.mainColor.color
                              : AppColors.mainColor.color.withOpacity(0.3),
                          height: dotIndex == index ? 25 : 8,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
