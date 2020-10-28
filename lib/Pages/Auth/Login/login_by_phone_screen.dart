import 'package:flutter/material.dart';
import '../../../Widgets/custom_button_widget.dart';
import '../../../Widgets/top_auth_navbar_widget.dart';
import '../../../Widgets/top_auth_titlebar_widget.dart';

import './login_by_email_screen.dart';

class LoginByPhoneScreen extends StatefulWidget {
  static const routeName = '/loginbyphone';
  @override
  _LoginByPhoneScreenState createState() => _LoginByPhoneScreenState();
}

class _LoginByPhoneScreenState extends State<LoginByPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopAuthNavBarWidget(
              rText: 'Skip Here',
              rTextFunc: null,
              arrowFunc: null,
            ),
            TopAuthTitleBarWidget(
              headerTitle: 'Welcome back!',
              subHeaderTitle: 'Enter your registered phone number\nto log in ',
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 33.0),
              child: Column(
                children: [
                  Container(
                    height: 50.0,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: '+234 000 000 0000',
                        suffixIcon: Icon(Icons.phone_android_rounded),
                        prefixIcon: Icon(
                          Icons.emoji_flags_rounded,
                          color: Colors.green,
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                        //border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide:
                              BorderSide(color: Colors.black12, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  CustomButtonWidget(
                      buttonText: 'Sign in',
                      buttonCallback: () => Navigator.of(context)
                          .pushNamed(LoginByEmailScreen.routeName)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    padding: EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Help?",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
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
