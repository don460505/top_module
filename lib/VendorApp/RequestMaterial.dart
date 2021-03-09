import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestMaterial extends StatefulWidget {
  @override
  _RequestMaterialState createState() => _RequestMaterialState();
}

class _RequestMaterialState extends State<RequestMaterial> {
  String selectedValue;
  int unit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff152c70),
        title: Text("Request for Material"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10.0),
                        color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Material Name",
                        suffixIcon: Icon(Icons.edit, color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                            height: 40,
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(10.0),
                            ),
                            child: DropdownButtonFormField(
                              value: unit,
                              items: ['1', '2','3'].map((value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  unit = value;
                                });
                              },

                              iconSize: 25,
                              dropdownColor: Colors.grey,
                              iconDisabledColor: Color(0xff152c70),
                              iconEnabledColor: Color(0xff152c70),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                  hintText: "Quantity",

                                //suffixIcon: Icon(Icons.arrow_drop_down,color: Color(0xff152c70),),

                              ),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadiusDirectional.circular(10.0),
                          ),
                          child: DropdownButtonFormField(
                            value: unit,
                            items: ['1', '2','3'].map((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                unit = value;
                              });
                            },
                            dropdownColor: Colors.grey,
                            iconDisabledColor: Color(0xff152c70),
                            iconEnabledColor: Color(0xff152c70),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Unit"
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadiusDirectional.circular(10.0),
                          ),
                          child: DropdownButtonFormField(

                            value: selectedValue,
                            items: ['one', 'two','Three'].map((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },

                            iconDisabledColor: Color(0xff152c70),
                            iconEnabledColor: Color(0xff152c70),
                            dropdownColor: Colors.grey,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Delivery Date"
                            ),
                          ),
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
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          color: Color(0xff152c70),
                          onPressed: () {},
                          child: Text(
                            "REQUEST",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ],
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
