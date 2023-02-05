import 'package:flutter/material.dart';
import 'package:graduation/routes.dart';
import 'package:graduation/screens/complete_profile/complete_profile_screen.dart';
import 'package:graduation/screens/create_new_password/create_new_password_screen.dart';
import 'package:graduation/screens/forget_password/forget_password_screen.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/intro_questions/intro_questions.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
import 'package:graduation/screens/questions/question_screen.dart';
import 'package:graduation/screens/sign_in/sign_in_screen.dart';
import 'package:graduation/screens/sign_up/sign_up_screen.dart';
import 'package:graduation/screens/splash/splash_screen.dart';
import 'package:graduation/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return

      MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        theme: theme(),
        initialRoute: CompleteProfileScreen.routeName,
        routes: routes,


    );
  }
}
