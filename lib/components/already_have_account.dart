import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/sign_in/sign_in_screen.dart';
import '../screens/sign_up/sign_up_screen.dart';
import '../size_config.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account ? ",style: LightModeSmallTextStyle),
        GestureDetector(
            onTap:() => Navigator.pushNamed(context, SignInScreen.routeName),
            child:
            Text("Log in ",style: LogInTextStyle,)),

      ],
    );
  }
}
