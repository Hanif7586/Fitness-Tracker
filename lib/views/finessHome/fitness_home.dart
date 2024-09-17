import 'package:fitness_tracker/utils/colors.dart';
import 'package:fitness_tracker/views/tracker_view/tracker_view.dart';
import 'package:fitness_tracker/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_circle_button.dart';
import '../../widgets/custom_icon_text.dart';
import '../../widgets/custom_item_card.dart';

class FitnessHome extends StatefulWidget {
  const FitnessHome({super.key});

  @override
  State<FitnessHome> createState() => _FitnessHomeState();
}

class _FitnessHomeState extends State<FitnessHome> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 35, 5, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns the text to start from the left
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomCircleButton(icon: Icons.dashboard,
                backgroundColor: Colors.white,
                ),
                CustomCircleButton(icon: Icons.notification_add,backgroundColor: Colors.white,)
              ],
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text:'Make Your',
                    color:Colors.white ,
                    fontWeight: null,
                  ),
                  CustomText(text:'Body Perfect',
                      color: AppColors.primaryColor, fontWeight: null,)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              alignment: Alignment.centerRight,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: size.width,
                  height: size.height*.23,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                 child: Padding(
                   padding: const EdgeInsets.all(10),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       CustomText(text: "Full Body", color: Colors.black, fontWeight: FontWeight.w700),
                       CustomText(text: "Exercise X3", color: Colors.black, fontWeight: FontWeight.w700),
                       CustomIconText(
                         icon: Icons.local_fire_department_outlined,
                         text:'1220 kCal', color: Colors.black.withOpacity(.5),

                       ),
                       CustomIconText(
                         icon: Icons.watch_later_outlined,
                         text:'50 min', color: Colors.black.withOpacity(.5),

                       ),
                       SizedBox(
                         height: 5,
                       ),

                       Padding(
                         padding: const EdgeInsets.all(0),
                         child: ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: Color(0xFFB9CF30)
                               ),
                                 onPressed: (){
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => TrackerView()),
                                   );
                                 },
                                   child: Text('Start Now',style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.w800,
                                     height: 4

                                   ),),
                                 ),
                       ),


                     ],
                   ),
                 ),

                ),
                Image.asset('assets/images/fitnessgirl.png',
                  height:197,
                  width: 180,
                )
              ],
            ),

            SizedBox(
              height: 25,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

               Expanded(
                 child: CustomItemCard(
                      icon: Icons.directions_run,
                      backgroundColor: AppColors.primaryColor,
                      iconColor: Colors.black,
                      titleText: 'Running \nDistance',
                      subtitleText: '1.8 KM',
                    ),
               ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomItemCard(
                    icon: Icons.directions_bike,
                    backgroundColor: AppColors.secondaryColor,
                    iconColor: Colors.white,
                    titleText: 'Total\nCycling',
                    subtitleText: '7.3 KM',
                    isDark: true,
                  ),
                ),






              ],
            ),
            SizedBox(
              height: 25,
            ),
          
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.all(12), // Adding padding for spacing
                  child: Row( // Wrap the contents in another Row to align text and image side by side
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Appointment',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          Text("For a ecercise practice",style: TextStyle(
                              color:Colors.white70,
                            fontSize: 18
                          ),)
                        ],
                      ),
                      SizedBox(width: 10), // Add space between text and image
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: CustomCircleButton(
                              icon: Icons.call,
                          iconColor: Colors.black,
                          backgroundColor: Color(0xFFE7FE55),
                            isbg: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),



          ],
        ),
      ),
    );
  }
}
