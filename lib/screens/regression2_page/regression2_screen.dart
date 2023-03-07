import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../regression2_page/components/body.dart';

class Regression2Screen extends StatelessWidget {
  static String routeName="/regression2_screen";
  const Regression2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
