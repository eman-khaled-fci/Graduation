import 'package:flutter/material.dart';
import 'package:graduation/routes.dart';
import 'package:graduation/screens/forget_password/forget_password_screen.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
import 'package:graduation/screens/sign_up/sign_up_screen.dart';
import 'package:graduation/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        theme: theme(),
        initialRoute: ForgetPasswordScreen.routeName,
        routes: routes,


    );
  }
}
