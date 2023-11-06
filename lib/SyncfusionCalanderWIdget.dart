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
      body: SfCalendar(),
    );
  }
}
