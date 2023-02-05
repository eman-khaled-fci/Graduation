//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import 'package:graduation/screens/result_page/components/body.dart';
class ResultScreen extends StatelessWidget {
  static String routeName="/result_screen";
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Body(),
    );
  }}
