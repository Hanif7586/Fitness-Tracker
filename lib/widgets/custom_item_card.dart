import 'package:fitness_tracker/utils/colors.dart';
import 'package:fitness_tracker/widgets/custom_circle_button.dart';
import 'package:fitness_tracker/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomItemCard extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final String titleText; // Renamed for consistency
  final String subtitleText;
  final bool?isDark;// Renamed for consistency

  const CustomItemCard({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
    required this.titleText,
    required this.subtitleText, this.isDark,

  });

  @override
  Widget build(BuildContext context) {
    var thisDark=isDark==true;
    return Container(
      decoration: BoxDecoration(
        color: thisDark ?AppColors.secondaryColor:AppColors.primaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.all(12), // Added padding for better spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: CustomCircleButton(
              backgroundColor:thisDark? Colors.white.withOpacity(.1) :Colors.black.withOpacity(.1),
              icon: icon,
              iconColor: iconColor, // Pass iconColor
            ),
          ),
          SizedBox(height: 8), // Add spacing between icon and text
          CustomText(
            text: titleText,
            color: thisDark?Colors.white70:Colors.black87,
            fontWeight: FontWeight.w400,
          ),
          CustomText(
            text: subtitleText,
            color:thisDark?Colors.white: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
