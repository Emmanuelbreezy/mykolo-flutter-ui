import 'package:flutter/material.dart';

class TopAuthTitleBarWidget extends StatelessWidget {
  TopAuthTitleBarWidget(
      {@required this.headerTitle, @required this.subHeaderTitle});

  final String headerTitle;
  final String subHeaderTitle;

  //
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 30.0, 0.0, 0.0),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 0.0),
            child: Text(
              headerTitle,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 52.0, 0.0, 0.0),
            child: Text(
              subHeaderTitle,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
