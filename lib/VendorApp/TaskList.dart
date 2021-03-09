import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'RequestMaterial.dart';
import 'TaskListUpdate.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff152c70),
        title: Text("Task List"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskListUpdate(),));
                },
                child: Card(
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
                    height: 100,
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
                                          size: 18,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Start Date -"),
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
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Start Date -"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Update",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff152c70)),
                            ),
                            Icon(
                              Icons.update,
                              size: 25,
                              color: Color(0xff152c70),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
