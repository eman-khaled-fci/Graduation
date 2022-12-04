import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

// Light mode colors

const LightModeMainBackgroundColor = Color(0xFFFFFFFF);
const LightModeMainColor = Color(0xFF6C63FF );
const LightModeLightPurpleColor = Color(0xFFF3F2FF);
const LightModeLabelColor = Color(0xFF00000);
const LightModeHeaderColor = Color(0xFF474747);
const LightModeSmallTextColor = Color(0xFF4D4B4B);

const Red = Color(0xFFFF0000);

// Dark mode colors
const DarkModeMainBackgroundColor = Color(0xFF6C63FF);
const DarkModeWhiteColor = Color(0xFFF3F2FF);
const DarkModeLabelAndHeadersColor = Color(0xFFFFFFFF);
const DarkModeSmallTextColor = Color(0xFFF2F1F1);



final LightModeHeadersStyle = TextStyle(
  fontSize: 26 ,
  fontFamily: "Poppins",
  //fontWeight: FontWeight.w700,  // semibold = w600
  color:LightModeHeaderColor ,

);

final LightModeLabelsStyle = TextStyle(
  fontSize: 16 ,
  fontFamily: "Poppins",
  color:LightModeLabelColor ,
  fontWeight: FontWeight.w300,

);

final LightModeSmallTextStyle =  TextStyle(
  fontSize: 16 ,
  fontFamily: "Poppins",
  color:LightModeSmallTextColor ,
  fontWeight: FontWeight.w300,


);

final ErrorsTextStyle = TextStyle(
  fontSize: 14 ,
  color: Red,
  fontFamily: "Poppins",
  fontWeight: FontWeight.w300,
);






// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

