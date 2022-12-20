//import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:graduation/screens/complete_profile/complete_profile_screen.dart';
import 'package:graduation/screens/create_new_password/create_new_password_screen.dart';
import 'package:graduation/screens/forget_password/forget_password_screen.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
import 'package:graduation/screens/sign_in/sign_in_screen.dart';
import 'package:graduation/screens/sign_up/sign_up_screen.dart';

final Map  <String, WidgetBuilder> routes = {

  HomeScreen.routeName:((context) => HomeScreen()),
  SignUpScreen.routeName:((context) => SignUpScreen()),
  SignInScreen.routeName:((context) => SignInScreen()),
  OtpScreen.routeName:((context) => OtpScreen()),
  ForgetPasswordScreen.routeName:((context) => ForgetPasswordScreen()),
  CreateNewPasswordScreen.routeName:((context) => CreateNewPasswordScreen()),
  CompleteProfileScreen.routeName:((context) => CompleteProfileScreen(firstSignUpScreenData: {},)),

};