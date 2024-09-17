import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight? fontWeight;
  const CustomText({super.key, required this.text, required this.color, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
            style: TextStyle(
              color: color,
              fontWeight: fontWeight??FontWeight.w600,
              fontSize: 22,
            ),
          ),

        ],
      );

  }
}
