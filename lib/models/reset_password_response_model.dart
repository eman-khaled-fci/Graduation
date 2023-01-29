

import 'dart:convert';
ResetPasswordResponseModel resetPasswordResponseModel (String str)
=> ResetPasswordResponseModel.fromJson(json.decode(str));


class ResetPasswordResponseModel {
  String? status;

  ResetPasswordResponseModel({this.status});

  ResetPasswordResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    return data;
  }
}
