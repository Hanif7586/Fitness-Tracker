import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_icon_text.dart';
import 'custom_text.dart';

class CustomHealthOverview extends StatelessWidget {
  final String overviewtitletext;
  final String overviewsubtitletext;

  const CustomHealthOverview({super.key, required this.overviewtitletext, required this.overviewsubtitletext});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
    return    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(100)
            ),
          ),
        ),
        Column(
          children: [
            CustomText(text: overviewtitletext, color: Colors.white, fontWeight: FontWeight.w700),
            CustomText(text: overviewsubtitletext, color: Colors.white70, fontWeight: FontWeight.w300),

          ],
        ),




      ],
    );
  }
}
