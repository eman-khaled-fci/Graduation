import 'dart:convert';

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

class APIService {
  static var client = http.Client();



  static Future<bool> login(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',
    } ;
    var url = Uri.http(baseUrl,loginEndpoint);
    var response = await client.post
    (     url,
        headers: requestHeaders,
        body: jsonEncode(model.toJson()),
    );
    if(response.statusCode == 200 ){
      // SHARED
     // print("cookie : "+response.headers['Cookie']!);
      return Future(() => true);
    }
    else{
      return Future(() => false);
    }

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

return registerResponseModel(response.body);
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
      'Cookie':  prefs.getString('currentSession')!
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