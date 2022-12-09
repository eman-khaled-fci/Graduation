import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

import 'package:graduation/screens/complete_profile/components/body.dart';

class   CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
