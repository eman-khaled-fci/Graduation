import 'dart:convert';

import 'package:graduation/constants.dart';
import 'package:graduation/models/forget_password_request_model.dart';
import 'package:graduation/models/forget_password_response_model.dart';
import 'package:graduation/models/login_request_model.dart';
import 'package:graduation/models/login_response_model.dart';
import 'package:graduation/models/register_request_model.dart';
import 'package:graduation/models/register_response_model.dart';
import 'package:graduation/models/reset_password_request_model.dart';
import 'package:graduation/models/reset_password_response_model.dart';
import 'package:graduation/models/verify_request_model.dart';
import 'package:graduation/models/verify_response_model.dart';
import 'package:http/http.dart' as http;


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
   return forgetPasswordResponseModel(response.body);

  }

  static Future<VerifyResponseModel> verify(VerifyRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',

    } ;

    var url = Uri.http(baseUrl,verifyOTPEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    return verifyResponseModel(response.body);
  }

  


  // زفت مش شغالة
  static Future<ResetPasswordResponseModel> resetPassword(ResetPasswordRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content-Type' : 'application/json',

    } ;

    var url = Uri.http(baseUrl,resetPasswordEndpoint);
    var response = await client.post
      (     url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),

    );

    return resetPasswordResponseModel(response.body);

  }


}