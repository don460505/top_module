import 'package:flutter/material.dart';
import 'package:top_module/CustomWidgets/AnimatedBottomBar.dart';

class StaffDashboard extends StatefulWidget {
  @override
  _StaffDashboardState createState() => _StaffDashboardState();
}

class _StaffDashboardState extends State<StaffDashboard> {
  int _currentIndex = 0;
  List<BarItem> barItems = [
    BarItem(
      text: "Home",
      iconData: Icons.home,
      color: Color(0xff152C70),
    ),
    BarItem(
      text: "Attendance",
      iconData: Icons.calendar_today,
      color: Color(0xff152C70),
    ),
    BarItem(
      text: "Live Feed",
      iconData: Icons.videocam_rounded,
      color: Color(0xff152C70),
    ),
    BarItem(
      text: "Notification",
      iconData: Icons.notifications_active,
      color: Color(0xff152C70),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff Dashboard'),
        centerTitle: true,
      ),
      bottomNavigationBar: AnimatedBottomBar(
        barItems: barItems,
        animationDuration: Duration(milliseconds: 350),
        onBarTab: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
