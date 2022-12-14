import 'package:http/http.dart';
import 'package:chopper/chopper.dart';
import 'package:dio/dio.dart';
import 'dart:convert';



class DataModel{
 // int? id;
  String? first_name;
  String? last_name;
  String? email;
  String? college;
  String? university;
  String? gender;
  String? password;
 // float? carbon_em;
  //bool? admin;
DataModel({
   // this.id,
    this.first_name,
    this.last_name,
    this.email,
    this.college,
  this.university,
  this.gender,
  this.password
});


factory DataModel.fromJson(Map<String,dynamic>json)=>DataModel(
    first_name:json["first_name"],
    last_name:json["last_name"],
    email:json["email"],
    college:json["college"],
    university:json["university"],
    gender:json["gender"],


);

}