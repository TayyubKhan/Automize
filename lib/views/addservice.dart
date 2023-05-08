import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../Routes/routes_name.dart';
import '../const.dart';

class AddService extends StatefulWidget {
  const AddService({Key? key}) : super(key: key);

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Color _yesterdayColor = Colors.grey.withOpacity(0.5);
  Color _todayColor = Colors.grey.withOpacity(0.5);
  Color _tomorrowColor = Colors.grey.withOpacity(0.5);
  Color _yesterdayTextColor = Colors.black;
  Color _todayTextColor = Colors.black;
  Color _tomorrowTextColor = Colors.black;

  void _onYesterdayPressed() {
    setState(() {
      _yesterdayColor = secondaryColor;
      _todayColor = Colors.grey.withOpacity(0.5);
      _tomorrowColor = Colors.grey.withOpacity(0.5);
      _focusedDay = _focusedDay.subtract(const Duration(days: 1));
      _yesterdayTextColor = Colors.white;
      _todayTextColor = Colors.black;
      _tomorrowTextColor = Colors.black;
    });
  }

  void _onTodayPressed() {
    setState(() {
      _yesterdayColor = Colors.grey.withOpacity(0.5);
      _todayColor = secondaryColor;
      _tomorrowColor = Colors.grey.withOpacity(0.5);
      _focusedDay = DateTime.now();
      _yesterdayTextColor = Colors.black;
      _todayTextColor = Colors.white;
      _tomorrowTextColor = Colors.black;
    });
  }

  void _onTomorrowPressed() {
    setState(() {
      _yesterdayColor = Colors.grey.withOpacity(0.5);
      _todayColor = Colors.grey.withOpacity(0.5);
      _tomorrowColor = secondaryColor;
      _focusedDay = _focusedDay.add(const Duration(days: 1));
      _yesterdayTextColor = Colors.black;
      _todayTextColor = Colors.black;
      _tomorrowTextColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: greyColor,
        ),
        title: const Text(
          'Add Service',
          style: TextStyle(color: greyColor),
        ),
        actions: const [
          Icon(
            Icons.close,
            color: greyColor,
          ),
        ],
      ),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            color: background,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('What\'s the date for this entry?',
                  style: TextStyle(
                      color: secondaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.05)),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                  'Tip:Don\'t worry about exact dates or if the entry took place over a period of time - an approximate date still helps build the timeline.',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.04)),
              TableCalendar(
                availableCalendarFormats: const {CalendarFormat.month: 'Month'},
                calendarFormat: _calendarFormat,
                focusedDay: _focusedDay,
                firstDay: DateTime.utc(2010, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay =
                        focusedDay; // update focused day to selected day
                  });
                },
                headerStyle: const HeaderStyle(
                    titleCentered: true,
                    titleTextStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500)),
                calendarStyle: const CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    color: secondaryColor,
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: _onYesterdayPressed,
                    child: Container(
                      height: height * 0.065,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          color: _focusedDay ==
                                  DateTime.now()
                                      .subtract(const Duration(days: 1))
                              ? Colors.grey
                              : _yesterdayColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        'Yesterday',
                        style: TextStyle(
                            color: _yesterdayTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.05),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: _onTodayPressed,
                    child: Container(
                      height: height * 0.065,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          color: _focusedDay == DateTime.now()
                              ? Colors.grey
                              : _todayColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        'Today',
                        style: TextStyle(
                            color: _todayTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.05),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: _onTomorrowPressed,
                    child: Container(
                      height: height * 0.065,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          color: _focusedDay ==
                                  DateTime.now().add(const Duration(days: 1))
                              ? Colors.grey
                              : _tomorrowColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        'Tomorrow',
                        style: TextStyle(
                            color: _tomorrowTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.05),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.12,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.addservice2);
                },
                child: Container(
                  height: height * 0.065,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Confirm',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: width * 0.05),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
