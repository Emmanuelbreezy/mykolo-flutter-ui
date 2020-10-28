import 'package:flutter/material.dart';

class CustomHorizPageBarWidget extends StatelessWidget {
  CustomHorizPageBarWidget(
      {@required this.activeColor, @required this.activePage});

  final Color activeColor;
  final String activePage;

  Color defaultColor = Colors.black12;

  List<String> _pages = [
    'set_name',
    'set_email',
    'set_password',
    'set_age',
    'set_pic',
  ];

  Widget buildpagebars(Color _defaultColor) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: _defaultColor,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: _pages.map((e) {
        Color _setColor;
        if (e == activePage && activeColor != null) {
          _setColor = activeColor;
        } else {
          _setColor = defaultColor;
        }
        return buildpagebars(_setColor);
      }).toList(),
    );
  }
}
