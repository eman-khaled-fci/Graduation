import 'package:flutter/material.dart';
import 'package:graduation/screens/questions/components/question_five.dart';
import 'package:graduation/screens/questions/components/question_four.dart';
import 'package:graduation/screens/questions/components/question_three.dart';
import 'package:graduation/screens/questions/components/question_two.dart';
import 'package:graduation/size_config.dart';
import '../questions/components/body.dart';


class QuestionScreen extends StatelessWidget {
  static String routeName= "/questions";
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: QuestionFive(),
    );
  }
}
