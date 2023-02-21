import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName ="/profile";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(


      body: Body(),
    );
  }
}
