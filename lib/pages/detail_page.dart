import 'package:flutter/material.dart';
import 'package:travel_app/utils/enums/app_colors.dart';
import 'package:travel_app/utils/enums/app_images.dart';
import 'package:travel_app/utils/enums/app_strings.dart';
import 'package:travel_app/widgets/widgets.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.mountain.caminho),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    color: AppColors.white.color,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white.color,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LargeTextWidget(
                          text: AppStrings.yosemite.texto,
                          color: AppColors.black.color.withOpacity(0.8),
                        ),
                        LargeTextWidget(
                          text: AppStrings.travelPrice.texto,
                          color: AppColors.mainColor.color,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor.color,
                        ),
                        const SizedBox(width: 5),
                        NormalTextWidget(
                          text: AppStrings.usaCalifornia.texto,
                          color: AppColors.textColor1.color,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: index < gottenStars
                                  ? AppColors.starColor.color
                                  : AppColors.textColor2.color,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        NormalTextWidget(
                          text: AppStrings.fourStars.texto,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    LargeTextWidget(
                      text: AppStrings.people.texto,
                      color: AppColors.black.color.withOpacity(0.8),
                    ),
                    const SizedBox(height: 5),
                    NormalTextWidget(
                      text: AppStrings.numberOfPeople.texto,
                      color: AppColors.mainColor.color,
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      children: List.generate(
                        5,
                        (index) => AppButtonWidget(
                          size: 50,
                          color: AppColors.black.color,
                          backgroundColor: AppColors.buttonBackground.color,
                          borderColor: AppColors.buttonBackground.color,
                          text: (index + 1).toString(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
