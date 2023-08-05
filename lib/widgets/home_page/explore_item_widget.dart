import 'package:flutter/material.dart';
import 'package:travel_app/utils/enums/app_colors.dart';
import 'package:travel_app/widgets/widgets.dart';

class ExploreItemWidget extends StatelessWidget {
  final String image;
  final String text;

  const ExploreItemWidget({
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: NormalTextWidget(
            text: text,
            size: 15,
            color: AppColors.textColor2.color,
          ),
        ),
      ],
    );
  }
}
