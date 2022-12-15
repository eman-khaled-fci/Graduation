


import 'dart:convert';
ResetPasswordResponseModel resetPasswordResponseModel (String str)
=> ResetPasswordResponseModel.fromJson(json.decode(str));


class ResetPasswordResponseModel {
  String? error;

  ResetPasswordResponseModel({this.error});

  ResetPasswordResponseModel.fromJson(Map<String, dynamic> json) {
    error = json['Error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Error'] = this.error;
    return data;
  }
}
