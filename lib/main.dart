import 'package:flutter/material.dart';
import 'package:top_module/StaffApp/StaffDashboard.dart';
import 'CustomerApp/WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff152C70),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/StaffDashboard': (context) => StaffDashboard(),
      },
    );
  }
}
