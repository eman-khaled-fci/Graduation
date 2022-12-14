import 'dart:convert';

import 'package:graduation/constants.dart';
import 'package:graduation/models/login_request_model.dart';
import 'package:graduation/models/login_response_model.dart';
import 'package:graduation/models/register_request_model.dart';
import 'package:graduation/models/register_response_model.dart';
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

}