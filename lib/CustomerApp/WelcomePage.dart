import 'package:flutter/material.dart';
import 'package:top_module/CustomWidgets/CustomerCustom.dart';

import 'LogInPage.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: CustomWidgets.getRoundedRaisedButton(
                  context, "CUSTOMER LOGIN", onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInPage()));
              }),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: CustomWidgets.getRoundedRaisedButton(
                    context, "STAFF LOGIN", onPressed: () {
                  Navigator.pushNamed(context, '/StaffDashboard');
                })),
            SizedBox(
              height: 12,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: CustomWidgets.getRoundedRaisedButton(
                    context, "VENDOR LOGIN",
                    onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
