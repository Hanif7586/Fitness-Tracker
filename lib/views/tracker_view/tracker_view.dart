import 'package:fitness_tracker/widgets/custom_health_overview.dart';
import 'package:fitness_tracker/widgets/custom_time_tracker.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/custom_circle_button.dart';
import '../../widgets/custom_icon_text.dart';
import '../../widgets/custom_item_card.dart';
import '../../widgets/custom_text.dart';
import 'package:fl_chart/fl_chart.dart';

class TrackerView extends StatefulWidget {
  const TrackerView({super.key});

  @override
  State<TrackerView> createState() => _TrackerViewState();
}

class _TrackerViewState extends State<TrackerView> {
  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> barChartData = [
      {'index': 0, 'value': 80, 'color': Colors.limeAccent},
      {'index': 1, 'value': 45, 'color': Colors.limeAccent},
      {'index': 2, 'value': 50, 'color': Colors.limeAccent},
      {'index': 3, 'value': 70, 'color': Colors.limeAccent},
      {'index': 4, 'value': 60, 'color': Colors.limeAccent},
      {'index': 5, 'value': 58, 'color': Colors.limeAccent},
      {'index': 6, 'value': 75, 'color': Colors.limeAccent},
    ];


    final size=MediaQuery.sizeOf(context);
    return Scaffold(
   body: Padding(
     padding: const EdgeInsets.all(8.0),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start, // Aligns the text to start from the left
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: const [
             CustomCircleButton(icon: Icons.arrow_left,
               backgroundColor: Colors.white,
               
             ),
             CustomCircleButton(icon: Icons.notification_add,backgroundColor: Colors.white,)
           ],
         ),
         SizedBox(height: 20),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               CustomText(
                 text:'Health',
                 color:Colors.white ,
                 fontWeight: null,
               ),
               CustomText(text:'OverView',
                 color: AppColors.primaryColor, fontWeight: null,)
             ],
           ),
         ),
         SizedBox(
           height: 10,
         ),
         Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CustomHealthOverview(
                   overviewtitletext: 'kalorik',
                   overviewsubtitletext: '1360 kCa',

                 ),
                 CustomHealthOverview(
                   overviewtitletext: 'Protein',
                   overviewsubtitletext: '33 Gram',
                 ),
               ],
             ),
             SizedBox(
               height: 20,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CustomHealthOverview(
                   overviewtitletext: 'Sleep',
                   overviewsubtitletext: '7 hour',
                 ),
                 CustomHealthOverview(
                   overviewtitletext: 'Weight',
                   overviewsubtitletext: '67kg',
                 ),
               ],
             ),
           ],
         ),
         SizedBox(
           height: 10,
         ),
         Stack(
           children: [
             Container(
               width: size.width,
               height: size.height * .20,
               decoration: BoxDecoration(
                 color: AppColors.primaryColor,
                 borderRadius: BorderRadius.circular(30),
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisSize: MainAxisSize.min,  // Ensure Column takes minimum space required
                   children: [
                     SizedBox(
                       height: 5,
                     ),
                     Row(
                       children: [
                         CustomCircleButton(
                           width: 50,
                           height: 50,
                           icon: (Icons.health_and_safety_outlined),
                           iconColor: Colors.black.withOpacity(.20),
                           backgroundColor: Colors.black,
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               CustomText(
                                 text: "851 ms",
                                 color: Colors.black,
                                 fontWeight: FontWeight.w800,
                               ),
                               Text(
                                 "R-R interval",
                                 style: TextStyle(
                                   color: Colors.black87,
                                   fontSize: 18,
                                   fontWeight: FontWeight.w400,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                     SizedBox(height: 30),
                     Row(
                       children: [
                         Expanded(
                           child:CustomTimeTracker(
                             time: '820 ms',
                           ),

                         ),
                         SizedBox(width: 5),
                         Expanded(
                           child:CustomTimeTracker(
                             isFilled: true,
                             time: '850 ms',
                           ),

                         ),
                         SizedBox(width: 5),
                         Expanded(
                           child:CustomTimeTracker(
                             isFilled: true,
                             time: '830 ms',
                           ),

                         ),

                       ],
                     )
                     // Add some space between rows

                   ],
                 ),
               ),
             ),
           ],
         ),
         SizedBox(
           height: 30,
         ),

     Container(
       width: size.width,
       padding: EdgeInsets.all(15),
       decoration: BoxDecoration(
         border: Border.all(
           color: AppColors.primaryColor
         ),
         borderRadius: BorderRadius.circular(25)
       ),

       child:Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           CustomText(text: "Blood Pressure", color: Colors.white, fontWeight: FontWeight.w700),
           SizedBox(
             height: 10,
           ),
           SizedBox(
             height: 150,
             child: BarChart(
               BarChartData(
                 alignment: BarChartAlignment.spaceAround,
                 maxY: 100,
                 barTouchData: BarTouchData(
                   enabled: true,
                   touchTooltipData: BarTouchTooltipData(),
                 ),
                 borderData: FlBorderData(
                   show: false,
                 ),
                 barGroups: barChartData.map((data) {
                   return BarChartGroupData(
                     x: data['index'],
                     barRods: [
                       BarChartRodData(
                           toY: data['value'],
                           color: data['color'],
                           width: 25,
                           backDrawRodData: BackgroundBarChartRodData(
                               color: AppColors.secondaryColor,
                               show: true,
                               toY: 100
                           )
                       ),
                     ],
                   );
                 }).toList(),
               ),
             ),
           ),
         ],
       )


     ),







     ],
     ),
   ),
    );
  }
}
