import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget(
      {@required this.buttonText, @required this.buttonCallback});

  final String buttonText;
  final Function buttonCallback;

  //

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      // margin: EdgeInsets.fromLTRB(28.0, 0.0, 28.0, 0.0),
      //padding: EdgeInsets.only(top: 50.0),
      child: GestureDetector(
        onTap: buttonCallback,
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black,
          shadowColor: Colors.grey,
          elevation: 2.0,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
