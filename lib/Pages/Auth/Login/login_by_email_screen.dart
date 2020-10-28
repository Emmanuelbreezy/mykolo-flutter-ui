import 'package:flutter/material.dart';
import '../Signup/Content/signup_name_screen.dart';
import '../../Home/home_screen.dart';
import '../../../Widgets/custom_button_widget.dart';
import '../../../Widgets/top_auth_titlebar_widget.dart';
import '../../../Widgets/top_auth_navbar_widget.dart';
import './forget_password_screen.dart';

class LoginByEmailScreen extends StatefulWidget {
  static const routeName = '/loginbyemail';
  @override
  _LoginByEmailScreenState createState() => _LoginByEmailScreenState();
}

class _LoginByEmailScreenState extends State<LoginByEmailScreen> {
  //bool _numberInputIsValid = true;

  void backtologinwithnumber() {
    return Navigator.of(context).pop();
  }

  // void initState() {
  //   super.initState();
  //   SystemChrome.setEnabledSystemUIOverlays(
  //       [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  // }

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
              arrowFunc: backtologinwithnumber,
            ),
            TopAuthTitleBarWidget(
              headerTitle: 'Save With MyKolo',
              subHeaderTitle: 'Please sign in to continue the app',
            ),
            Container(
              padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 33.0),
              child: Column(
                children: [
                  Container(
                    height: 50.0,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email address',
                        suffixIcon: Icon(Icons.mail_outline),
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
                    height: 8.0,
                  ),
                  Container(
                    height: 50.0,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: Icon(Icons.lock_outline),
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
                  SizedBox(height: 5.0),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15.0, left: 20.0),
                    child: InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(ForgetPasswordScreen.routeName),
                      child: Text(
                        'Forget password?',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  CustomButtonWidget(
                      buttonText: 'Sign in Account',
                      buttonCallback: () => Navigator.of(context)
                          .pushReplacementNamed(HomeScreen.routeName)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    padding: EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Don't have an Account?",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    padding: EdgeInsets.only(top: 9.0),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(SignupNameScreen.routeName),
                      child: Row(
                        children: [
                          Center(
                            child: Text(
                              "REGISTER",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.chevron_right_outlined,
                              color: Colors.red,
                              size: 18,
                            ),
                          )
                        ],
                      ),
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
