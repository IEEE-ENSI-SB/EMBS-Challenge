import 'package:flutter/material.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime today=DateTime.now();
  DateTime _selectedDay = DateTime.now();
  String getMonthName(int month) {
    final Map<int, String> monthNames = {
      1: 'January',
      2: 'February',
      3: 'March',
      4: 'April',
      5: 'May',
      6: 'June',
      7: 'July',
      8: 'August',
      9: 'September',
      10: 'October',
      11: 'November',
      12: 'December',
    };
    return monthNames[month] ?? '';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xFFD5E2EB),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(2,2),
              color: Colors.grey.shade500,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
              child:
              Text( getMonthName(today.month)+" "+ today.year.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),),
            Container(
              padding: EdgeInsetsDirectional.all(15),
              child:
              WeeklyDatePicker(
                selectedDay: _selectedDay,
                changeDay: (value) => setState(() {
                  _selectedDay = value;
                }),
                enableWeeknumberText: false,
                backgroundColor: const Color(0xFFD5E2EB),
                weekdayTextColor: const Color(0xFF8A8A8A),
                digitsColor: Colors.black,
                selectedBackgroundColor: Colors.lightBlue.shade800,
                weekdays: const ["Mon", "Tue", "Wed", "Thu", "Fri","Sat","Sun"],
                daysInWeek: 7,
              ),),
          ],));
  }
}
