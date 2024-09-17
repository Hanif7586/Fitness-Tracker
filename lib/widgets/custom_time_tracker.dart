import 'package:flutter/material.dart';

class CustomTimeTracker extends StatelessWidget {
  final bool? isFilled;
  final String time;

  const CustomTimeTracker({super.key, this.isFilled, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 7,
          decoration: BoxDecoration(
            color:isFilled ==true?Colors.black87:Colors.black.withOpacity(.2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Center(
          child: Text(time,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 22,
              fontWeight: FontWeight.w500,

            ),),
        ),
      ],
    );
  }
}
