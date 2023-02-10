import 'dart:convert';

import 'package:graduation/models/calculate_carbon_request_model.dart';
import 'package:graduation/models/calculate_carbon_response_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:graduation/constants.dart';
import 'package:graduation/models/forget_password_request_model.dart';
import 'package:graduation/models/forget_password_response_model.dart';
import 'package:graduation/models/google_login_response.dart';
import 'package:graduation/models/login_request_model.dart';
import 'package:graduation/models/login_response_model.dart';
import 'package:graduation/models/login_with_remember_request_model.dart';
import 'package:graduation/models/login_with_remember_response.dart';
import 'package:graduation/models/register_request_model.dart';
import 'package:graduation/models/register_response_model.dart';
import 'package:graduation/models/remember_me_request_model.dart';
import 'package:graduation/models/remember_me_response_model.dart';
import 'package:graduation/models/reset_password_request_model.dart';
import 'package:graduation/models/reset_password_response_model.dart';

import 'package:graduation/models/verify_request_model.dart';
import 'package:graduation/models/verify_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/carbon_advices_resposnse_model.dart';

class APIService {
  static var client = http.Client();



  static Future<LoginResponseModel> login(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
    } ;
    var url = Uri.http(baseUrl,loginEndpoint);
    var response = await client.post
    (     url,
        headers: requestHeaders,
        body: jsonEncode(model.toJson()),
    );

    var Cookie = response.headers['set-cookie'];
    print("I,m here");
      print("Cookie             "+Cookie!);
    final endIndex = Cookie?.indexOf(";", 0);
    var session = Cookie?.substring(0,endIndex);
   print("session             "+session!);

print("headerss        ");
print(response.headers);
    print("end of headerss        ");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('currentSession', session!);

   // print(Cookie);
return loginResponseModel(response.body);
    //
    // if(response.statusCode == 200 ){
    //   print("login token   "+response.body)
    //   // SHARED
    //  // print("cookie : "+response.headers['Cookie']!);
    //   return Future(() => true);
    // }
    // else{
    //   return Future(() => false);
    // }

  }








  static Future<CarbonAdvicesResposnseModel> carbonAdvice() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("currentSession"+prefs.getString('currentSession')!);
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',

      'Cookie': //"session=eyJpZCI6MTF9.Y-Jn0Q.NfEuoLwwiejUtZ3vJW_NJW1HHNw"
      prefs.getString('currentSession')!
     // "session=eyJpZCI6MTN9.Y-J1XQ.aE6fFrFZBugirWaQzrxVtP8ckig"

    } ;


    var url = Uri.http(baseUrl,carbonAdviceEndpoint);
    var response = await client.get
      (     url,
      headers: requestHeaders,
      // body: jsonEncode(model.toJson()),

    );
    print("I am still in the end point");
  //  print("carbonAdvicesResposnseModel(response.body)");
//print(carbonAdvicesResposnseModel(response.body).largestEmissionType);
    return carbonAdvicesResposnseModel(response.body);


  }






  static Future<RegisterResponseModel> register(RegisterRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',

    } ;

    var url = Uri.http(baseUrl,registerEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    var Cookie = response.headers['set-cookie'];
    print("I,m here");
    print("Cookie             "+Cookie!);
    final endIndex = Cookie?.indexOf(";", 0);
    var session = Cookie?.substring(0,endIndex);
    print("session             "+session!);

    print("headerss        ");
    print(response.headers);
    print("end of headerss        ");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('currentSession', session!);



    return registerResponseModel(response.body);
  }


  static Future<CalculateCarbonResponseModel> calculateCarbon(CalculateCarbonRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("reached hereeeeee");
    print("current cookie is    "+prefs.getString('currentSession')! );
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie':  prefs.getString('currentSession')!

    } ;

    var url = Uri.http(baseUrl,carbonCalcEndPoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    return calculateCarbonResponseModel(response.body);
  }



  static Future<GoogleLoginResponse> googleLogin() async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',

    } ;

    var url = Uri.http(urlForGoogleLogin,googleLoginEndpoint);
    var response = await client.get
      (     url,
     // headers: requestHeaders,
      //body: jsonEncode(model.toJson()),

    );
    print("response body "+response.body);
    return googleResponseModel(response.body);
  }




  static Future<LoginWithRememberMeResponseModel> loginWithRememberMe(LoginWithRememberMeRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',

    } ;

    var url = Uri.http(baseUrl,loginEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    return loginWithRememberMeResponseModel(response.body);
  }


  static Future<RememberMeResponseModel> rememberMe(RememberMeRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
    } ;

    var url = Uri.http(baseUrl,rememberMeEndpoint);
    var response = await client.post
      (
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    return rememberMeResponseModel(response.body);
  }








  static Future<ForgetPasswordResponseModel> forgetPassword(ForgetPasswordRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',

    } ;

    var url = Uri.http(baseUrl,forgetPasswordEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );
   // print(response.headers['set-cookie']);


   var Cookie = response.headers['set-cookie'];

    // final endIndex = Cookie?.indexOf(" ", 0);
    // var session = Cookie?.substring(0,endIndex);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('currentSession', Cookie!);

    print(Cookie);

   return forgetPasswordResponseModel(response.body);

  }

  static Future<VerifyResponseModel> verify(VerifyRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      'Cookie':  prefs.getString('currentSession')!
    } ;

    var url = Uri.http(baseUrl,verifyOTPEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );
    //  print("passed cookie : "+response.headers['Cookie']!);

    return verifyResponseModel(response.body);
  }

  static Future<ResetPasswordResponseModel> resetPassword(ResetPasswordRequestModel model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
      //'Cookie':  prefs.getString('currentSession')!
    } ;

    var url = Uri.http(baseUrl,resetPasswordEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );
    //  print("passed cookie : "+response.headers['Cookie']!);

    return resetPasswordResponseModel(response.body);
  }





}