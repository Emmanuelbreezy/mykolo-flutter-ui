import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Provider
import './Provider/theme_provider.dart';
import './SplashScreen/splash_screen.dart';

// Auth Login
import './Pages/Auth/Login/forget_password_screen.dart';
import './Pages/Auth/Login/login_by_email_screen.dart';
import './Pages/Auth/Login/login_by_phone_screen.dart';

// Auth Signup
import './Pages/Auth/Signup/Content/signup_name_screen.dart';

import './Pages/Home/home_screen.dart';
import './Pages/Auth/Signup/Content/signup_email_screen.dart';
import './Pages/Auth/Signup/Content/signup_set_password_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MyKolo',
          theme: notifier.darkTheme
              ? notifier.darkthemeData
              : notifier.lightthemeData,
          home: SplashScreen(),
          routes: {
            HomeScreen.routeName: (ctx) => HomeScreen(),
            LoginByPhoneScreen.routeName: (ctx) => LoginByPhoneScreen(),
            LoginByEmailScreen.routeName: (ctx) => LoginByEmailScreen(),
            ForgetPasswordScreen.routeName: (ctx) => ForgetPasswordScreen(),

            SignupNameScreen.routeName: (ctx) =>
                SignupNameScreen(), //signupscreen
            SignupEmailScreen.routeName: (ctx) => SignupEmailScreen(),
            SignupSetPassword.routeName: (ctx) => SignupSetPassword(),
          },
        ),
      ),
    );
  }
}
