import 'package:flutter/material.dart';

class CustomIconText extends StatelessWidget {
  final IconData icon;
  final String text; // Changed from Color to String
  final Color color;

  const CustomIconText({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
         color: Colors.black.withOpacity(.5), // Applied color to the Icon
        ),
        SizedBox(width: 8), // Adds some space between the icon and the text
        Text(
          text,
          style: TextStyle(
            color: color.withOpacity(0.5), // Applied color to the Text
          ),
        ),
      ],
    );
  }
}
