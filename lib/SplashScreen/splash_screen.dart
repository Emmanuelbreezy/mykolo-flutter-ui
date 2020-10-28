import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/services.dart';
import 'package:mykolo/PageRoute/slide_route_transition.dart';
import '../Pages/Auth/Login/login_by_phone_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    Timer(
      Duration(seconds: 20),
      () => Navigator.pushReplacement(
          context, SlideRightRoute(page: LoginByPhoneScreen())),
    );
    //CupertinoPageRoute(builder: null)

    //Navigator.of(context)
    //.pushReplacementNamed(LoginByPhoneScreen.routeName));
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(
            image: AssetImage(
              'assets/images/splash_screen.png',
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
