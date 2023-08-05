import 'package:flutter/material.dart';
import 'package:travel_app/utils/enums/app_colors.dart';
import 'package:travel_app/utils/enums/app_images.dart';

class ResponsiveButtonWidget extends StatelessWidget {
  final bool isResponsive;
  final double width;

  const ResponsiveButtonWidget({
    this.isResponsive = false,
    this.width = 120,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: AppColors.mainColor.color,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.button.caminho),
        ],
      ),
    );
  }
}
