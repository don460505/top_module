import 'package:flutter/material.dart';
import '../CustomWidgets/AnimatedBottomBar.dart';
import 'VendorHome.dart';
import 'NotificationPage.dart';
import 'dart:math';
import 'VendorAttedance.dart';
import 'VendorLivefeed.dart';

class VendorDashboard extends StatefulWidget {
  @override
  _VendorDashboardState createState() => _VendorDashboardState();
}

class _VendorDashboardState extends State<VendorDashboard> {
  bool isLoading = true;
  bool adminSwitchShow = true;
  int _currentIndex = 0;
  bool popUpResponded = false;
  bool noPopUpData = false;
  bool flag = false;
  List<Widget> _children = [
    VendorHome(),
    VendorAttedance(),
    VendorLivefeed(),
    NotificationPage(),
  ];
  List<Widget> Vendorappbar = [
    Text("Home"),
    Text("Attendance"),
    Text("Live Feed"),
    Text("Notification"),
  ];

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
    final List<Widget> _children1 = [
      VendorHome(),
      NotificationPage(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Vendorappbar[_currentIndex],
        centerTitle: true,
      ),
      drawer: _currentIndex == 0
          ? Drawer(
              child: Column(
                children: [
                  Container(
                    color: Color(0xff152c70),
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              Icons.person,
                              size: 50,
                              color: Color(0xff152c70),
                            ),
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Divyan Sondagar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Color(0xff152c70),
                      size: 25,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(
                            0xff152c70,
                          ),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.apartment_sharp,
                      color: Color(0xff152c70),
                      size: 25,
                    ),
                    title: Text(
                      "Terms & Condition",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(
                            0xff152c70,
                          ),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Color(0xff152c70),
                      size: 25,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(
                            0xff152c70,
                          ),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.help_outline_sharp,
                      color: Color(0xff152c70),
                      size: 25,
                    ),
                    title: Text(
                      "Help",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(
                            0xff152c70,
                          ),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Color(0xff152c70),
                      size: 25,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff152c70),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            )
          : null,
      body: barItems.length == 4 ? _children[_currentIndex] : _children[0],
      bottomNavigationBar: AnimatedBottomBar(
        barItems: barItems,
        animationDuration: Duration(milliseconds: 350),
        onBarTab: (index) {
          setState(() {
            index == 0 ? adminSwitchShow = true : adminSwitchShow = false;
          });
          setState(
            () {
              _currentIndex = index;
            },
          );
          print('================${index}');
        },
      ),
    );
  }
}
