import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

import '../questions/components/body.dart';


class QuestionScreen extends StatelessWidget {
  static String routeName= "/questions";
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
