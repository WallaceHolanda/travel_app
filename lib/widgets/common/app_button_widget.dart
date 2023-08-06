import 'package:flutter/material.dart';
import 'package:travel_app/utils/enums/app_colors.dart';
import 'package:travel_app/utils/enums/app_strings.dart';
import 'package:travel_app/widgets/widgets.dart';

class AppButtonWidget extends StatelessWidget {
  final Color color;
  final double size;
  final Color backgroundColor;
  final Color borderColor;
  final bool isIcon;
  final String? text;
  final IconData? icon;

  const AppButtonWidget({
    required this.color,
    required this.size,
    required this.backgroundColor,
    required this.borderColor,
    this.isIcon = false,
    this.text,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
      ),
      child: Center(
        child: isIcon
            ? Icon(icon!)
            : NormalTextWidget(
                text: text ?? AppStrings.none.texto,
                color: AppColors.black.color,
              ),
      ),
    );
  }
}
