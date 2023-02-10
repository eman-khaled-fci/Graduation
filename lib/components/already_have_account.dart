import 'package:flutter/material.dart';
import 'package:graduation/models/remember_me_request_model.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
import 'package:graduation/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../screens/sign_in/sign_in_screen.dart';
import '../screens/sign_up/sign_up_screen.dart';
import '../size_config.dart';
// test
class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account ? ", style: LightModeSmallTextStyle),
        GestureDetector(
            onTap: () async {
              // SharedPreferences prefs = await SharedPreferences.getInstance();
              // print("rememberToken" + prefs!.getString('rememberToken')!);
              // RememberMeRequestModel model2 = RememberMeRequestModel(
              //   rememberToken: prefs?.getString('rememberToken')!,
              // );
              // APIService.rememberMe(model2).then((response) async => {
              //       if (response.status == "Valid")
              //         {
              //           print(response.status),
              //           Navigator.pushNamed(context, OtpScreen.routeName)
              //         }
              //       else
              //         {
              //           print("remember token not valid"),
              //           Navigator.pushNamed(context, SignInScreen.routeName)
              //         }
              //     });
              Navigator.pushNamed(context, SignInScreen.routeName);
              //  Navigator.pushNamed(context, SignInScreen.routeName);
            },
            child: Text(
              "Log in ",
              style: LogInTextStyle,
            )),
      ],
    );
  }
}
