//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:graduation/screens/about/about_screen.dart';
import 'package:graduation/screens/articles/article_screen.dart';
import 'package:graduation/screens/complete_profile/complete_profile_screen.dart';
import 'package:graduation/screens/contact_us/contact_screen.dart';
import 'package:graduation/screens/create_new_password/create_new_password_screen.dart';
import 'package:graduation/screens/forget_password/forget_password_screen.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/home_page/home_page_screen.dart';
import 'package:graduation/screens/intro_questions/intro_questions.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/plant2_page/plant2_screen.dart';
import 'package:graduation/screens/plant3_page/plant3_screen.dart';
import 'package:graduation/screens/questions/components/question_eight.dart';
import 'package:graduation/screens/questions/components/question_five.dart';
import 'package:graduation/screens/questions/components/question_four.dart';
import 'package:graduation/screens/questions/components/question_nine.dart';
import 'package:graduation/screens/questions/components/question_one.dart';
import 'package:graduation/screens/questions/components/question_seven.dart';
import 'package:graduation/screens/questions/components/question_six.dart';
import 'package:graduation/screens/questions/components/question_three.dart';
import 'package:graduation/screens/questions/components/question_two.dart';
import 'package:graduation/screens/regression1_page/regression1_screen.dart';
import 'package:graduation/screens/regression2_page/regression2_screen.dart';
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
 // ResultScreen.routeName:((context)=>ResultScreen()),
  WebPageScreen.routeName:((context) => WebPageScreen()),
  //QuestionScreen.routeName:((context) => QuestionScreen()),

  SplashScreen.routeName:((context) => SplashScreen()),
  IntroScreen.routeName:((context) => IntroScreen()),

  QuestionOne.routeName:((context) => QuestionOne()),
 // QuestionTwo.routeName:((context) => QuestionTwo()),
 //  QuestionThree.routeName:((context) => QuestionThree()),
 //  QuestionFour.routeName:((context) => QuestionFour()),
 //  QuestionFive.routeName:((context) => QuestionFive()),
 //  QuestionSix.routeName:((context) => QuestionSix()),
 //  QuestionSeven.routeName:((context) => QuestionSeven()),
 //  QuestionEight.routeName:((context) => QuestionEight()),
 //  QuestionNine.routeName:((context) => QuestionNine()),

  HomePageScreen.routeName:((context) => HomePageScreen()),
  Plant1Screen.routeName:((context)=> Plant1Screen()),
  Plant2Screen.routeName:((context)=> Plant2Screen()),
  Plant3Screen.routeName:((context)=> Plant3Screen()),
  ArticlesScreen.routeName:((context)=>ArticlesScreen()),
  Regression1Screen.routeName:((context)=> Regression1Screen()),
  Regression2Screen.routeName:((context)=> Regression2Screen()),
  AboutScreen.routeName:((context)=> AboutScreen()),
  ContactScreen.routeName:((context)=> ContactScreen()),


};