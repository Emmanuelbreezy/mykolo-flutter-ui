import 'package:flutter/material.dart';
import '../../../../Widgets/custom_horiz_page_bar_widget.dart';
import '../../../../Widgets/custom_button_widget.dart';
import '../../../../Widgets/top_auth_navbar_widget.dart';
import '../../../../Widgets/top_auth_titlebar_widget.dart';

class SignupSetPassword extends StatefulWidget {
  static const routeName = '/signupsetpass';

  @override
  _SignupSetPasswordState createState() => _SignupSetPasswordState();
}

class _SignupSetPasswordState extends State<SignupSetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopAuthNavBarWidget(
                rText: 'Skip Here',
                rTextFunc: null,
                arrowFunc: null,
              ),
              TopAuthTitleBarWidget(
                headerTitle: 'Set Password',
                subHeaderTitle: 'Require information to account creations',
              ),
              Container(
                padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 33.0),
                child: Column(
                  children: [
                    Container(
                      height: 50.0,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(
                            Icons.visibility_off_rounded,
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
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
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
                          labelText: 'Repeat Password',
                          suffixIcon: Icon(
                            Icons.visibility_off_rounded,
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
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(
                        40.0,
                      ),
                      child: CustomHorizPageBarWidget(
                        activeColor: Colors.blue,
                        activePage: 'set_password',
                      ),
                    ),
                    CustomButtonWidget(
                        buttonText: 'Continue', buttonCallback: null),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                        "Already have an Account?",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      padding: EdgeInsets.only(top: 9.0),
                      child: GestureDetector(
                        onTap: null,
                        child: Row(
                          children: [
                            Center(
                              child: Text(
                                "LOGIN",
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
      ),
    );
  }
}
