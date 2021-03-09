import 'package:flutter/material.dart';

class VendorAttedance extends StatefulWidget {
  @override
  _VendorAttedanceState createState() => _VendorAttedanceState();
}

class _VendorAttedanceState extends State<VendorAttedance> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.white),
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("January",style: TextStyle(color: Color(0xff152c70),fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("2021",style: TextStyle(color: Color(0xff152c70),fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Color(0xff152c70),
                    onPressed: () {},
                    child: Text(
                      "MARK ATTENDANCE",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
