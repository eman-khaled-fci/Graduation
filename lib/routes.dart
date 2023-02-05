//import 'dart:js';


import 'package:flutter/material.dart';
import 'package:graduation/screens/complete_profile/complete_profile_screen.dart';
import 'package:graduation/screens/create_new_password/create_new_password_screen.dart';
import 'package:graduation/screens/forget_password/forget_password_screen.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/intro_questions/intro_questions.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
import 'package:graduation/screens/questions/question_screen.dart';
import 'package:graduation/screens/sign_in/sign_in_screen.dart';
import 'package:graduation/screens/sign_up/sign_up_screen.dart';
import 'package:graduation/screens/web_page/web_page_screen.dart';

import 'package:graduation/screens/splash/splash_screen.dart';


final Map  <String, WidgetBuilder> routes = {

  HomeScreen.routeName:((context) => HomeScreen()),
  SignUpScreen.routeName:((context) => SignUpScreen()),
  SignInScreen.routeName:((context) => SignInScreen()),
  OtpScreen.routeName:((context) => OtpScreen()),
  ForgetPasswordScreen.routeName:((context) => ForgetPasswordScreen()),
  CreateNewPasswordScreen.routeName:((context) => CreateNewPasswordScreen()),
  CompleteProfileScreen.routeName:((context) => CompleteProfileScreen(firstSignUpScreenData: {},)),

  WebPageScreen.routeName:((context) => WebPageScreen()),
  QuestionScreen.routeName:((context) => QuestionScreen()),

  SplashScreen.routeName:((context) => SplashScreen()),
  IntroScreen.routeName:((context) => IntroScreen()),

};