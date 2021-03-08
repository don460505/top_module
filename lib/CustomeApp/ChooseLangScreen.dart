import 'package:flutter/material.dart';
import 'package:top_module/CustomWidgets/CustomerCustom.dart';

class ChooseLangScreen extends StatefulWidget {
  @override
  _ChooseLangScreenState createState() => _ChooseLangScreenState();
}

class _ChooseLangScreenState extends State<ChooseLangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back),
            SizedBox(height: 30,),
            Center(
              child: Container(
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:12.0,left: 8,right: 8,bottom: 12),
                    child: Column(
                      children: [
                        CustomWidgets.getText("Choose a Language"),
                        SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Center(child: Text("English")),
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Center(child: Text("English")),
                            )
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Center(child: Text("English")),
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Center(child: Text("English")),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                            child: CustomWidgets.getRoundedRaisedButton(context, "CONTINUE",onPressed: (){}))

                      ],
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
