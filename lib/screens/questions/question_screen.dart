import 'package:flutter/material.dart';
import 'package:graduation/screens/questions/components/question_eight.dart';
import 'package:graduation/screens/questions/components/question_nine.dart';
import 'package:graduation/screens/questions/components/question_seven.dart';
import 'package:graduation/screens/questions/components/question_six.dart';
import 'package:graduation/size_config.dart';

import '../questions/components/body.dart';


class QuestionScreen extends StatelessWidget {
  static String routeName= "/questions";
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body:QuestionNine(),
    );
  }
}
