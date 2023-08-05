import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  final Color color;
  final double height;

  const DotWidget({
    required this.color,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      width: 8,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
