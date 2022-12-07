import 'package:flutter/widgets.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
import 'package:graduation/screens/sign_in/sign_in_screen.dart';
import 'package:graduation/screens/sign_up/sign_up_screen.dart';

final Map  <String, WidgetBuilder> routes = {

  HomeScreen.routeName:((context) => HomeScreen()),
  SignUpScreen.routeName:((context) => SignUpScreen()),
  SignInScreen.routeName:((context) => SignInScreen()),
  OtpScreen.routeName:((context) => OtpScreen()),

};