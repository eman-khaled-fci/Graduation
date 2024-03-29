import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

// Api url & end points

const String baseUrl = '192.168.1.5:5000';
const String urlForGoogleLogin = '10.0.2.2:5000';
const String carbonCalcEndPoint = '/calc';
const String registerEndpoint = '/register';
const String loginEndpoint = '/login';
const String getAllUsersEndpoint = '/all_user';
const String getUserByIdEndpoint = '/user/<int:id>';
const String googleLoginEndpoint = '/api/login/google';
const String googleRegisterEndpoint = '/api/auth/google';
const String registerOauthEndpoint = '/register_Oauth';
const String LogoutEndpoint = '/api/logout';
const String forgetPasswordEndpoint = '/forgetPassword';
const String verifyOTPEndpoint = '/verify';
const String resetPasswordEndpoint = '/resetPassword';
const String rememberMeEndpoint = '/remember_me';
const String carbonAdviceEndpoint = '/carbAdv';


// questions pages colores

// Q1-mainColor : #9E6329
// Q2-mainColor : #64666A
// Q3-mainColor : #375148
// Q4-mainColor : #938664
// Q5-mainColor : #426974
// Q6-mainColor : #2D5620
// Q7-mainColor : #683724
// Q8-mainColor : #7F3B1F
// Q9-mainColor : #122F35

const Q1_mainColor = Color(0xFF9E6329);
const Q2_mainColor = Color(0xFF64666A);
const Q3_mainColor = Color(0xFF375148);
const Q4_mainColor = Color(0xFF938664);
const Q5_mainColor = Color(0xFF426974);
const Q6_mainColor = Color(0xFF2D5620);
const Q7_mainColor = Color(0xFF683724);
const Q8_mainColor = Color(0xFF7F3B1F);
const Q9_mainColor = Color(0xFF122F35);

const borderColor = Color(0xFFD9D9D9);

const prevButtonColor = Color(0xFFEDEDED);

const question_color = Color(0xFF474747);

// Light mode colors

const LightModeMainBackgroundColor = Color(0xFFFFFFFF);
const LightModeMainColor = Color(0xFF1CA953);
//const MyLightModeLightGreenColor = Color(0xFFB9F3D1);
const LightModeLightGreenColor = Color(0xFFE8F6EE);
const LightModeLabelColor = Color(0xFF00000);
const LightModeHeaderColor = Color(0xFF474747);
const LightModeSmallTextColor = Color(0xFF4D4B4B);
const LightGray = Color(0xFFF2F1F1);
const Red = Color(0xFFEB4335);

final LightModeHeadersStyle = TextStyle(
  fontSize: getProportionateScreenWidth(21), //26
  fontFamily: "Poppins",
  //fontWeight: FontWeight.w700,  // semibold = w600
  color: LightModeHeaderColor,
);

final LightModeLabelsStyle = TextStyle(
  fontSize: getProportionateScreenWidth(16),
  fontFamily: "Poppins2",
  color: LightModeLabelColor,
);

final LightModeSmallTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(16),
  fontFamily: "Poppins2",
  color: LightModeSmallTextColor,
);

final ErrorsTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(15),
  color: Red,
  fontFamily: "Poppins2",
);

final ButtonFontStyle = TextStyle(
  color: LightModeMainBackgroundColor,
  fontFamily: "Poppins",
  fontSize: getProportionateScreenWidth(21),
);

final LogInTextStyle = TextStyle(
    fontSize: getProportionateScreenWidth(18),
    fontFamily: "Poppins",
    color: LightModeMainColor);

final ContinueWithTextStyle = TextStyle(
    fontFamily: "Poppins",
    fontSize: getProportionateScreenWidth(18),
    color: LightModeSmallTextColor);

final textStyle = TextStyle(
  fontSize: getProportionateScreenWidth(16),
  fontFamily: "Poppins3",
  color: Colors.black,
);

final questionsStyle = TextStyle(
    fontSize: getProportionateScreenWidth(18),
    fontFamily: "Poppins",
    color: question_color);

final answersStyle = TextStyle(
    fontSize: getProportionateScreenWidth(16),
    fontFamily: "Poppins",
    color: question_color

);

final InputTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(17),
  fontFamily: "Poppins2",
  color: LightModeSmallTextColor,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Email can not be empty";
const String kInvalidEmailError = "Invalid Email Address";

const String kPassNullError = "Password can not be empty";
const String kShortPassError = "Password is too short";

const String kMatchPassError = "Passwords don't match";

const String kNamelNullError = "Name can not be empty";
const String kNamelInvalidError = "Name should be at Least 3 chars !";

const String kUniversityNullError = "University can not be empty";
const String kUniversityInvalidError = "Enter valid Input";

const String kCollegeNullError = "University can not be empty";
const String kCollegeInvalidError = "Enter valid Input";

const String kPhoneNumberNullError = "Phone number can not be empty";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(0)),
  border: UnderlineInputBorder(
    borderSide: BorderSide(color: LightModeMainColor),
  ),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    //borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: LightModeMainColor),
  );
}

final bindecoration = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: LightModeMainColor),
    //<-- SEE HERE
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: LightModeMainColor),
    //<-- SEE HERE
  ),
);
