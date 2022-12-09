import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/sign_in/sign_in_screen.dart';
import '../screens/sign_up/sign_up_screen.dart';
import '../size_config.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Forget The Password ? ",style: LightModeSmallTextStyle),
        GestureDetector(
            onTap:() => Navigator.pushNamed(context, SignInScreen.routeName),
            child:
            Text("Reset Now",style: LogInTextStyle,)),

      ],
    );
  }
}