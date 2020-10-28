import 'package:flutter/material.dart';

class TopAuthNavBarWidget extends StatelessWidget {
  TopAuthNavBarWidget({
    @required this.rText,
    @required this.rTextFunc,
    @required this.arrowFunc,
  });

  final String rText;
  final Function rTextFunc;
  final Function arrowFunc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: EdgeInsets.only(right: 2.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: arrowFunc,
              iconSize: 20,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
            child: Image.asset(
              'assets/images/KOlo-Small.png',
              scale: 2,
            ),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            child: GestureDetector(
              child: Text(
                rText,
                style: TextStyle(color: Colors.grey),
              ),
              onTap: rTextFunc,
            ),
          ),
        ],
      ),
    );
  }
}
