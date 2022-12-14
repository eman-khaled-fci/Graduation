import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

// Api url & end points

const String baseUrl = '172.18.95.81:5000';
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



















// Light mode colors

const LightModeMainBackgroundColor = Color(0xFFFFFFFF);
const LightModeMainColor = Color(0xFF1CA953 );
//const MyLightModeLightGreenColor = Color(0xFFB9F3D1);
const LightModeLightGreenColor = Color(0xFFE8F6EE);
const LightModeLabelColor = Color(0xFF00000);
const LightModeHeaderColor = Color(0xFF474747);
const LightModeSmallTextColor = Color(0xFF4D4B4B);
const LightGray = Color(0xFFF2F1F1);
const Red = Color(0xFFEB4335);


final LightModeHeadersStyle = TextStyle(
  fontSize: getProportionateScreenWidth(21) ,  //26
  fontFamily: "Poppins",
  //fontWeight: FontWeight.w700,  // semibold = w600
  color:LightModeHeaderColor ,

);

final LightModeLabelsStyle = TextStyle(
  fontSize: getProportionateScreenWidth(16) ,
  fontFamily: "Poppins2",
  color:LightModeLabelColor ,


);

final LightModeSmallTextStyle =  TextStyle(
  fontSize: getProportionateScreenWidth(16)  ,
  fontFamily: "Poppins2",
  color:LightModeSmallTextColor ,


);

final ErrorsTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(15) ,
  color: Red,
  fontFamily: "Poppins2",

);

final ButtonFontStyle = TextStyle(
  color: LightModeMainBackgroundColor,
  fontFamily: "Poppins",
  fontSize: getProportionateScreenWidth(21),
);

final LogInTextStyle =  TextStyle(
    fontSize: getProportionateScreenWidth(18),
    fontFamily: "Poppins",
    color: LightModeMainColor

);

final ContinueWithTextStyle = TextStyle(
    fontFamily: "Poppins",
    fontSize: getProportionateScreenWidth(18)
    ,color: LightModeSmallTextColor);

final textStyle =  TextStyle(

  fontSize: getProportionateScreenWidth(16)  ,
  fontFamily: "Poppins3",
  color:Colors.black ,


);

final InputTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(17)  ,
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
    borderSide: BorderSide(color:LightModeMainColor ),
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
)
,
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: LightModeMainColor),
    //<-- SEE HERE
  )

    ,


);


