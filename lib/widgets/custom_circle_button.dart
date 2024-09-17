import 'package:fitness_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final IconData icon;
  final double? height;
  final double? width;
  final Color backgroundColor;
  final Color?iconColor;
  final bool?isbg;

  const CustomCircleButton({super.key, required this.icon, this.height, this.width,required this.backgroundColor, this.iconColor, this.isbg});

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: height??80,
      width: width??80,
      decoration: BoxDecoration(
        color: isbg==true?AppColors.primaryColor:backgroundColor.withOpacity(.1),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          icon,
          size: 30,
          color: iconColor??Colors.white,



        ),
      ),
    );
  }
}
