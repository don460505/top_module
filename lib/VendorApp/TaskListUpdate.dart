import 'package:flutter/material.dart';
import '';
class TaskListUpdate extends StatefulWidget {
  @override
  _TaskListUpdateState createState() => _TaskListUpdateState();
}

class _TaskListUpdateState extends State<TaskListUpdate> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff152c70),

      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Measurement of Main Door",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: Colors.blueGrey,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Start Date -",style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 15,
                                  width: 1,
                                  color: Colors.blueGrey,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 18,
                                        color: Colors.blueGrey,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Start Date -",style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Add Photos",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.05,
                                  width: MediaQuery.of(context).size.width * 0.10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Icon(Icons.camera_alt,color: Colors.grey,),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Mark as Done",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Checkbox(value: true, onChanged: null),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: Color(0xff152c70),
                              onPressed: () {},
                              child: Text(
                                "UPDATE",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
