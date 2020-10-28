import 'package:flutter/material.dart';

import '../../../Widgets/custom_button_widget.dart';
import '../../../Widgets/top_auth_navbar_widget.dart';
import '../../../Widgets/top_auth_titlebar_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  static const routeName = '/forgetpassword';

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  void backtologin() {
    return Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopAuthNavBarWidget(
              rText: 'Cancel',
              rTextFunc: backtologin,
              arrowFunc: backtologin,
            ),
            TopAuthTitleBarWidget(
              headerTitle: 'Forget Password',
              subHeaderTitle: 'Require information to account creations',
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 33.0),
              child: Column(
                children: [
                  Container(
                    height: 50.0,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email address',
                        suffixIcon: Icon(
                          Icons.mail_outline_rounded,
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
                    height: 170.0,
                  ),
                  CustomButtonWidget(
                      buttonText: 'Send Link', buttonCallback: null),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
