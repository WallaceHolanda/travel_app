import 'package:flutter/material.dart';

class CardImageWidget extends StatelessWidget {
  final String image;
  const CardImageWidget({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      margin: const EdgeInsets.only(right: 20, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
