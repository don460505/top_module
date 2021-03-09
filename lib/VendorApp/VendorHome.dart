import 'package:flutter/material.dart';
import 'TaskList.dart';
import 'TaskListUpdate.dart';
import 'RequestMaterial.dart';
class VendorHome extends StatefulWidget {
  @override
  _VendorHomeState createState() => _VendorHomeState();
}

class _VendorHomeState extends State<VendorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
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
                      child: Icon(Icons.person,size:50,color: Color(0xff152c70),),
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    SizedBox(height:20 ,),
                    Text("Divyan Sondagar",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Color(0xff152c70),size: 25,),
              title: Text("Home",style: TextStyle(fontSize: 18,color: Color(0xff152c70,)),),
            ),
            ListTile(
              leading: Icon(Icons.apartment_sharp,color: Color(0xff152c70),size: 25,),
              title: Text("Terms & Condition",style: TextStyle(fontSize: 18,color: Color(0xff152c70,)),),
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Color(0xff152c70),size: 25,),
              title: Text("Settings",style: TextStyle(fontSize: 18,color: Color(0xff152c70,)),),
            ),
            ListTile(
              leading: Icon(Icons.help_outline_sharp,color: Color(0xff152c70),size: 25,),
              title: Text("Help",style: TextStyle(fontSize: 18,color: Color(0xff152c70,)),),
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Color(0xff152c70),size: 25,),
              title: Text("Logout",style: TextStyle(fontSize: 18,color: Color(0xff152c70,)),),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  height: 150,
                  width: MediaQuery.of(context).size.width *0.90,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskList(),));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 60,
                    decoration: BoxDecoration(
                      color:Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Task List",style: TextStyle(color: Color(0xff152c70)),),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_forward,color: Colors.blueGrey[100],),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestMaterial(),));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 60,
                    decoration: BoxDecoration(
                      color:Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Request For Material",style: TextStyle(color: Color(0xff152c70)),),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_forward,color: Colors.blueGrey[100],),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

