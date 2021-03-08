import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget getRoundedRaisedButton(BuildContext context, String text,
      {onPressed,
      Color textColor = Colors.white,
      FontWeight fontWeight = FontWeight.normal}) {
    return RaisedButton(
      onPressed: onPressed,
      child: CustomWidgets.getText(text,
          textColor: textColor, fontSize: 16.0, fontWeight: fontWeight),
      color: Color(0xff152C70),
      textColor: Colors.white,
      elevation: 1.0,
      padding: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        //side:BorderSide(color: Color(0xFFFEEBF1))
      ),
    );
  }

  static Widget getText(String text,
      {TextStyle style,
      FontWeight fontWeight = FontWeight.normal,
      Color textColor = const Color(0xFF3A3A3A),
      double fontSize = 16.0,
      TextAlign textAlign = TextAlign.start,
      TextOverflow overflow}) {
    return new Text(
      text != null ? text : "",
      overflow: overflow,
      style: style,
      textAlign: textAlign,
    );
  }

  static Widget getTextFormField(BuildContext context,
      {TextEditingController controller,
      String labelText,
      FormFieldSetter<String> onSaved,
      FormFieldValidator<String> validator,
      bool isPass = false,
      Widget iconButton,
      contentPadding: const EdgeInsets.only(top: 22, bottom: 18, left: 12),
      TextInputType keyboardType: TextInputType.text,
      counterText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0, bottom: 6.0),
          child: Text(
            labelText,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.black,
            hintColor: Colors.grey[400],
          ),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                //border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12.0)),
            child: Card(
              elevation: 3.0,
              child: TextFormField(
                controller: controller,
                onSaved: onSaved,
                obscureText: isPass,
                validator: validator,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                    contentPadding: contentPadding,
                    prefixIcon: iconButton,
                    border: InputBorder.none,
                    counterText: ""),
              ),
            ),
          ),
        ),
        // CustomWidget.dividerWhite,
      ],
    );
  }

  static Widget getStaffBottomNavBar() {}
}
