import 'package:flutter/material.dart';
import 'package:top_module/CustomWidgets/CustomerCustom.dart';
import 'package:top_module/CustomerApp/ChooseLangScreen.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseLangScreen()));
                    },
                    child: Container(
                      height: 60,
                      width: 180,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.language,
                                size: 22,
                              ),
                              CustomWidgets.getText("Change Language",
                                  textColor: Colors.grey)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomWidgets.getTextFormField(context,
                  labelText: "USER-ID",
                  iconButton:
                      IconButton(icon: Icon(Icons.person), onPressed: null)),
              SizedBox(
                height: 20,
              ),
              CustomWidgets.getTextFormField(context,
                  labelText: "PASSWORD",
                  iconButton:
                      IconButton(icon: Icon(Icons.lock), onPressed: null)),
              Align(
                  alignment: Alignment.bottomRight,
                  child: CustomWidgets.getText("Forgotten password ?")),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: CustomWidgets.getRoundedRaisedButton(context, "LOGIN",
                      onPressed: () {}))
            ],
          ),
        ),
      ),
    );
  }
}
