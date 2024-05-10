import 'dart:html';

import 'package:adstackstest/model/creators.dart';
import 'package:adstackstest/model/project.dart';
import 'package:adstackstest/widget/creatorsWidget.dart';
import 'package:adstackstest/widget/projectWidget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Calender
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  //Search Bar
  TextEditingController _searchController = TextEditingController();
  String _searchText = '';

  ///
  var indexPage = 0;

  ///
  var projectList = [
    ProjectModel(
        title: 'Technology behind the Blockchain',
        subtitle: 'Project #1 .See project details'),
    ProjectModel(
        title: 'Technology behind the Blockchain',
        subtitle: 'Project #1 .See project details'),
    ProjectModel(
        title: 'Technology behind the Blockchain',
        subtitle: 'Project #1 .See project details'),
  ];
  var creatorsList = [
    CreatorsModel(artWork: '9821', rating: 0.6),
    CreatorsModel(artWork: '9810', rating: 0.4),
    CreatorsModel(artWork: '970', rating: 0.8),
  ];
  @override
  Widget build(BuildContext context) {
    var hi = MediaQuery.of(context).size.height;
    var we = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: we * 0.18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: hi * 0.012,
                ),
                Image.asset(
                  'assets/images/app-store.png',
                  width: we * 0.044,
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
                SizedBox(
                  width: we * 0.16,
                  child: Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: hi * 0.02,
                ),
                Image.asset(
                  'assets/images/man.png',
                  width: we * 0.05,
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
                Text(
                  'Pooja Mishra',
                  style: TextStyle(
                    fontSize: we * 0.01,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: hi * 0.015,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Admin",
                    style: TextStyle(
                      fontSize: we * 0.01,
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(),
                ),
                SizedBox(
                  height: hi * 0.02,
                ),
                SizedBox(
                  width: we * 0.16,
                  child: Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color:
                          (indexPage == 0) ? Color(0xFFF6F5F2) : Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home_filled,
                        size: we * 0.01,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: we * 0.01,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color:
                          (indexPage == 1) ? Color(0xFFF6F5F2) : Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.people_alt_outlined,
                        size: we * 0.01,
                      ),
                      Text(
                        'Employees',
                        style: TextStyle(
                          fontSize: we * 0.01,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color:
                          (indexPage == 2) ? Color(0xFFF6F5F2) : Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.list_sharp,
                        size: we * 0.01,
                      ),
                      Text(
                        'Attendance',
                        style: TextStyle(
                          fontSize: we * 0.01,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color:
                          (indexPage == 3) ? Color(0xFFF6F5F2) : Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        size: we * 0.01,
                      ),
                      Text(
                        'Summary',
                        style: TextStyle(
                          fontSize: we * 0.01,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color:
                          (indexPage == 4) ? Color(0xFFF6F5F2) : Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        size: we * 0.01,
                      ),
                      Text(
                        'Information',
                        style: TextStyle(
                          fontSize: we * 0.01,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WORKSPACE',
                      style: TextStyle(
                        fontSize: we * 0.01,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: we * 0.01,
                    ),
                    Icon(
                      Icons.add,
                      weight: we * 0.01,
                    ),
                  ],
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      'Adstacks',
                      style: TextStyle(
                        fontSize: we * 0.01,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: we * 0.02,
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      weight: we * 0.01,
                    ),
                    SizedBox(
                      width: we * 0.02,
                    ),
                  ],
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      'Finance',
                      style: TextStyle(
                        fontSize: we * 0.01,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: we * 0.03,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: we * 0.01,
                    ),
                    SizedBox(
                      width: we * 0.02,
                    ),
                  ],
                ),
                SizedBox(
                  height: hi * 0.08,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.settings,
                        weight: we * 0.01,
                      ),
                      Text(
                        'Setting',
                        style: TextStyle(
                          fontSize: we * 0.01,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.login,
                        size: we * 0.01,
                        color: Colors.black,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: we * 0.01,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: hi * 0.012,
                ),
              ],
            ),
          ),
          Container(
            width: we * 0.82,
            height: hi,
            color: Color(0xFFF6F5F2),
            padding: EdgeInsets.all(8),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: hi * 0.1,
                    child: Row(
                      children: [
                        SizedBox(
                          width: we * 0.01,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: we * 0.01,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: we * 0.3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF1B1A55), // Background color
                              borderRadius: BorderRadius.circular(
                                  30), // Circular border radius
                            ),
                            child: TextField(
                              controller: _searchController,
                              style: TextStyle(
                                  color: Colors.white, fontSize: we * 0.01),
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                border: InputBorder.none, // No border
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: we * 0.01,
                                  color: Colors.white,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 14), // Adjust padding as needed
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _searchText = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: we * 0.03,
                            ),
                            Icon(
                              Icons.message_outlined,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: we * 0.02,
                            ),
                            Icon(
                              Icons.notifications,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: we * 0.02,
                            ),
                            Icon(
                              Icons.power_settings_new,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: we * 0.1,
                            ),
                            Image.asset(
                              'assets/images/man.png',
                              height: 30,
                            ),
                            SizedBox(
                              width: we * 0.02,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: we * 0.02,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            height: hi * 0.3,
                            width: we * 0.55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFD16BA5), // Color D16BA5
                                  Color(0xFF86A8E7), // Color 86A8E7
                                  Color(0xFF5FFBF1), // Color 5FFBF1
                                ],
                                begin: Alignment
                                    .centerLeft, // Horizontal gradient starting from left
                                end: Alignment
                                    .centerRight, // Horizontal gradient ending at right
                                stops: [0.0, 0.5, 1.0],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'ETHEREUM 2.0',
                                  style: TextStyle(
                                    fontSize: we * 0.008,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: hi * 0.01,
                                ),
                                Text(
                                  'Top Rating \nProject',
                                  style: TextStyle(
                                    fontSize: we * 0.012,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: hi * 0.031,
                                ),
                                Text(
                                  'Trending project and high rating \nProjects Creation by team',
                                  style: TextStyle(
                                    fontSize: we * 0.008,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: hi * 0.03,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Learn More',
                                    style: TextStyle(
                                      fontSize: we * 0.011,
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF1B1A55),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: hi * 0.03,
                          ),
                          Row(
                            children: [
                              Container(
                                width: we * 0.26,
                                height: hi * 0.30,
                                padding: EdgeInsets.only(
                                    top: 16, left: 16, right: 16),
                                decoration: BoxDecoration(
                                  color: Color(0xFF1B1A55),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'All Projects',
                                      style: TextStyle(
                                          fontSize: we * 0.01,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: hi * 0.23,
                                      width: we * 0.3,
                                      child: ListView.builder(
                                        itemCount: projectList.length,
                                        itemBuilder: (context, index) {
                                          return ProjectWidgets(
                                              context, projectList[index]);
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: we * 0.03),
                              Container(
                                width: we * 0.26,
                                height: hi * 0.3,
                                padding: EdgeInsets.only(
                                    top: 16, left: 16, right: 16),
                                decoration: BoxDecoration(
                                  color: Color(0xFF1B1A55),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Top Creators',
                                      style: TextStyle(
                                          fontSize: we * 0.01,
                                          color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: we * 0.005,
                                        ),
                                        SizedBox(
                                          width: we * 0.1,
                                          child: Text(
                                            'Name',
                                            style: TextStyle(
                                                fontSize: we * 0.01,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          width: we * 0.005,
                                        ),
                                        SizedBox(
                                          width: we * 0.06,
                                          child: Text(
                                            'Artwork',
                                            style: TextStyle(
                                                fontSize: we * 0.01,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          width: we * 0.005,
                                        ),
                                        SizedBox(
                                          width: we * 0.04,
                                          child: Text(
                                            'Rating',
                                            style: TextStyle(
                                                fontSize: we * 0.01,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: hi * 0.2,
                                      width: we * 0.23,
                                      child: ListView.builder(
                                        itemCount: creatorsList.length,
                                        itemBuilder: (context, index) {
                                          return CreatorsWidgets(
                                              context, creatorsList[index]);
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: hi * 0.015,
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            height: hi * 0.22,
                            width: we * 0.55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                            ),
                            child: LineChart(
                                duration: Duration(milliseconds: 250),
                                sampleData1),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            width: we * 0.23,
                            height: hi * 0.877,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(16)),
                              color: Color(0xFF1B1A55),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Text(
                                  'GENERAL 10:00 AM TO 7:00 PM',
                                  style: TextStyle(
                                    fontSize: we * 0.01,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: hi * 0.02,
                                ),
                                Container(
                                  width: we * 0.2,
                                  height: hi * 0.27,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white,
                                  ),
                                  child: TableCalendar(
                                    rowHeight: hi * 0.03,
                                    firstDay: DateTime.utc(2020, 01, 01),
                                    lastDay: DateTime.utc(2025, 12, 31),
                                    focusedDay: _focusedDay,
                                    calendarFormat: _calendarFormat,
                                    onFormatChanged: (format) {
                                      setState(() {
                                        _calendarFormat = format;
                                      });
                                    },
                                    onDaySelected: (selectedDay, focusedDay) {
                                      setState(() {
                                        _selectedDay = selectedDay;
                                        _focusedDay = focusedDay;
                                      });
                                    },
                                    selectedDayPredicate: (day) {
                                      return isSameDay(_selectedDay, day);
                                    },
                                    calendarStyle: CalendarStyle(
                                      defaultTextStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: we * 0.006),
                                      todayTextStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: we * 0.006),
                                      selectedTextStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: we * 0.006),
                                      outsideTextStyle: TextStyle(
                                          fontSize: we *
                                              0.006), // Decrease text size for outside days
                                      weekendTextStyle:
                                          TextStyle(fontSize: we * 0.006),
                                      todayDecoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                      selectedDecoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                      cellPadding: EdgeInsets.zero,
                                      tablePadding: EdgeInsets.zero,
                                    ),
                                    headerStyle: HeaderStyle(
                                      titleTextStyle: TextStyle(
                                          fontSize: we *
                                              0.006), // Decrease header text size
                                      formatButtonVisible:
                                          false, // Hide the format button (optional)
                                    ),
                                    daysOfWeekStyle: DaysOfWeekStyle(
                                      weekdayStyle: TextStyle(
                                          fontSize: we *
                                              0.006), // Decrease days of week text size
                                      weekendStyle: TextStyle(
                                          fontSize: we *
                                              0.006), // Decrease weekend days of week text size
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: hi * 0.02,
                                ),
                                Container(
                                  width: we * 0.2,
                                  height: hi * 0.23,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xFF35374B),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/sparkles.png',
                                            width: we * 0.013,
                                          ),
                                          Text(
                                            'Today Birthday',
                                            style: TextStyle(
                                                fontSize: we * 0.01,
                                                color: Colors.white),
                                          ),
                                          Image.asset(
                                            'assets/images/sparkles.png',
                                            width: we * 0.013,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: hi * 0.014,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: we * 0.02,
                                          ),
                                          Image.asset(
                                            'assets/images/man.png',
                                            width: we * 0.023,
                                          ),
                                          SizedBox(
                                            width: we * 0.02,
                                          ),
                                          Image.asset(
                                            'assets/images/man.png',
                                            width: we * 0.023,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: hi * 0.008,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: we * 0.02,
                                          ),
                                          Text(
                                            'Total',
                                            style: TextStyle(
                                                fontSize: we * 0.01,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: we * 0.01,
                                          ),
                                          Text(
                                            '|',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: we * 0.016,
                                            ),
                                          ),
                                          SizedBox(
                                            width: we * 0.01,
                                          ),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: we * 0.01,
                                            ),
                                          ),
                                          SizedBox(
                                            width: we * 0.01,
                                          ),
                                          Text(
                                            '|',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: we * 0.016,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: hi * 0.012,
                                      ),
                                      SizedBox(
                                        width: we * 0.15,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.send_outlined,
                                                color: Colors.white,
                                                size: we * 0.015,
                                              ),
                                              Text(
                                                "Birthday Wishing",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.deepPurpleAccent,
                                              padding: EdgeInsets.all(2),
                                              shape: ContinuousRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: hi * 0.02,
                                ),
                                Container(
                                  width: we * 0.2,
                                  height: hi * 0.24,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xFF35374B),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/sparkles.png',
                                            width: we * 0.013,
                                          ),
                                          Text(
                                            'Anniversary',
                                            style: TextStyle(
                                                fontSize: we * 0.01,
                                                color: Colors.white),
                                          ),
                                          Image.asset(
                                            'assets/images/sparkles.png',
                                            width: we * 0.013,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: hi * 0.014,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: we * 0.02,
                                          ),
                                          Image.asset(
                                            'assets/images/man.png',
                                            width: we * 0.023,
                                          ),
                                          SizedBox(
                                            width: we * 0.02,
                                          ),
                                          Image.asset(
                                            'assets/images/man.png',
                                            width: we * 0.023,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: hi * 0.008,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: we * 0.02,
                                          ),
                                          Text(
                                            'Total',
                                            style: TextStyle(
                                                fontSize: we * 0.01,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: we * 0.01,
                                          ),
                                          Text(
                                            '|',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: we * 0.016,
                                            ),
                                          ),
                                          SizedBox(
                                            width: we * 0.01,
                                          ),
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: we * 0.01,
                                            ),
                                          ),
                                          SizedBox(
                                            width: we * 0.01,
                                          ),
                                          Text(
                                            '|',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: we * 0.016,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: hi * 0.012,
                                      ),
                                      SizedBox(
                                        width: we * 0.15,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.send_outlined,
                                                color: Colors.white,
                                                size: we * 0.015,
                                              ),
                                              Text(
                                                "Anniversary Wishing",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.deepPurpleAccent,
                                              padding: EdgeInsets.all(2),
                                              shape: ContinuousRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}

LineChartData get sampleData1 => LineChartData(
      gridData: gridData,
      titlesData: titleData,
      borderData: boarderData,
      lineBarsData: lineBarsData,
      minX: 0,
      maxX: 14,
      minY: 0,
      maxY: 4,
    );


List<LineChartBarData> get lineBarsData =>[
  lineChartBarData1,
  lineChartBarData2
];

FlTitlesData get titleData => FlTitlesData(
    bottomTitles: AxisTitles(
      sideTitles: bottomTitles(),
    ),
    rightTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    topTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    leftTitles: AxisTitles(
      sideTitles: leftTitles(),
    ));

Widget leftTitlesWidget(double value, TitleMeta meta) {
  const style =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey);
  String text;
  switch (value.toInt()) {
    case 1:
      text = '1m';
      break;
    case 2:
      text = '2m';
      break;
    case 3:
      text = '3m';
      break;
    case 4:
      text = '4m';
      break;
    case 5:
      text = '5m';
      break;
    default:
      return Container();
  }
  return Text(
    text,
    style: style,
    textAlign: TextAlign.center,
  );
}

SideTitles leftTitles() => SideTitles(
    getTitlesWidget: leftTitlesWidget,
    showTitles: true,
    interval: 1,
    reservedSize: 40
);





Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style =
  TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey);
  Widget text;
  switch (value.toInt()) {
    case 2:
      text = Text('2020', style: style,);
      break;
    case 7:
      text = Text('2021', style: style,);
      break;
    case 12:
      text = Text('2022', style: style,);
      break;

    default:
      text = Text(' ');
      break;
  }
  return  SideTitleWidget(
    axisSide: meta.axisSide,
      space: 10,
    child: text,
  ) ;
}

SideTitles bottomTitles() => SideTitles(
showTitles: true,
    interval: 1,
    reservedSize: 32,
getTitlesWidget: bottomTitleWidgets,
);

FlGridData get gridData => FlGridData(show:  false);

FlBorderData get  boarderData => FlBorderData(
  show:  true,
  border: Border(
    bottom:
      BorderSide(color: Colors.grey,width: 4),
    left:   BorderSide(color: Colors.grey),
    right:  BorderSide(color: Colors.transparent),
    top:  BorderSide(color: Colors.transparent),
  )
);


LineChartBarData get lineChartBarData1 => LineChartBarData(
  isCurved: true,
  color: Colors.purple,
  barWidth: 6,
  isStrokeCapRound:true,
  dotData: FlDotData(show: false),
  belowBarData: BarAreaData(show: false),
  spots: [
    FlSpot(1, 1),
    FlSpot(3, 1.5),
    FlSpot(5, 1.6),
    FlSpot(7, 3.4),
    FlSpot(10, 2),
    FlSpot(12, 2.5),
    FlSpot(13, 1.6),
  ]

);

LineChartBarData get lineChartBarData2 => LineChartBarData(
    isCurved: true,
    color: Colors.redAccent,
    barWidth: 6,
    isStrokeCapRound:true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(show: false),
    spots: [
      FlSpot(1, 2),
      FlSpot(3, 1),
      FlSpot(5, 3.4),
      FlSpot(7, 2.3),
      FlSpot(10, 2.5),
      FlSpot(12, 3),
      FlSpot(13, 4),
    ]

);








