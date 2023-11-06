import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SyncFusionCalander extends StatefulWidget {
  const SyncFusionCalander({super.key});

  @override
  State<SyncFusionCalander> createState() => _SyncFusionCalanderState();
}

class _SyncFusionCalanderState extends State<SyncFusionCalander> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // safeArea is for showcasing widget in safe space
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // here i used this sizedbox to customize the sfcalander cell height
                SizedBox(
                  height: 2 * MediaQuery.of(context).size.height / 3,

                  // sfCalendar use for creating custom calander
                  
                  child: SfCalendar(
                    // showcase which type of calander shown in UI
                    view: CalendarView.month,

                    // apply color for selected date
                    selectionDecoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.red, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
