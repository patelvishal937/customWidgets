import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SyncFusionCalander extends StatefulWidget {
  const SyncFusionCalander({super.key});

  @override
  State<SyncFusionCalander> createState() => _SyncFusionCalanderState();
}

class _SyncFusionCalanderState extends State<SyncFusionCalander> {
  CalendarController _calendarController = CalendarController();
  late CalendarDataSource _dataSource;

  @override
  initState() {
    _dataSource = _getCalendarDataSource();
    super.initState();
  }

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
                    // dataSource

                    dataSource: _getCalendarDataSource(),
                    // onviechanged for displaying agenda

                    // onViewChanged: (ViewChangedDetails details) {
                    //   List<DateTime> dates = details.visibleDates;
                    //   String calenderTimezone = '';
                    //   List<Object> appointment =
                    //       _dataSource.getVisibleAppointments(
                    //           dates[0],
                    //           calenderTimezone,
                    //           dates[(details.visibleDates.length) - 1]);
                    // },
                    // This is for showing appointment for each date

                    monthViewSettings: const MonthViewSettings(
                      // appointmentDisplayCount: 1,
                      appointmentDisplayMode:
                          MonthAppointmentDisplayMode.appointment,
                    ),

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

// Create the Meeting Datasource
MeetingDataSource _getCalendarDataSource() {
  List<Meeting> meetings = <Meeting>[];
  // This is for start date
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.hour);
  final DateTime endTime = startTime.add(Duration(hours: 1));
  meetings.add(Meeting(
      eventName: "hello",
      from: startTime,
      to: endTime,
      background: Colors.green,
      startTimeZone: '',
      endTimeZone: '',
      isAllDay: true));
  meetings.add(
    Meeting(
        eventName: "hello",
        from: DateTime(2023, 11, 1, 9),
        to: DateTime(2023, 11, 1, 11),
        background: Colors.green,
        startTimeZone: '',
        endTimeZone: '',
        isAllDay: true),
  );
  meetings.add(
    Meeting(
        eventName: "hello",
        from: DateTime(2023, 11, 1, 9),
        to: DateTime(2023, 11, 1, 11),
        background: Colors.green,
        startTimeZone: '',
        endTimeZone: '',
        isAllDay: true),
  );
  meetings.add(
    Meeting(
        eventName: "hello",
        from: DateTime(2023, 11, 2, 9),
        to: DateTime(2023, 11, 2, 11),
        background: Colors.green,
        startTimeZone: '',
        endTimeZone: '',
        isAllDay: true),
  );
  meetings.add(
    Meeting(
        eventName: "hellooooooooosss",
        from: DateTime(2023, 11, 8, 9),
        to: DateTime(2023, 11, 8   , 11),
        background: Colors.green,
        startTimeZone: '',
        endTimeZone: '',
        isAllDay: true),
  );
  meetings.add(
    Meeting(
        eventName: "hello",
        from: DateTime(2023, 11, 3, 9),
        to: DateTime(2023, 11, 3, 11),
        background: Colors.green,
        startTimeZone: '',
        endTimeZone: '',
        isAllDay: false),
  );

  return MeetingDataSource(meetings);
}

//  map properties of Meeting class with our calendar widget by using the CalendarDataSource override methods properties.
class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from as DateTime;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to as DateTime;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  String getStartTimeZone(int index) {
    return appointments![index].startTimeZone;
  }

  @override
  String getEndTimeZone(int index) {
    return appointments![index].endTimeZone;
  }
}

// Create a Custom Meeting
class Meeting {
  Meeting(
      {this.endTimeZone = "",
      this.startTimeZone = "",
      required this.eventName,
      required this.from,
      required this.to,
      required this.background,
      required this.isAllDay});

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
  String startTimeZone;
  String endTimeZone;
}
