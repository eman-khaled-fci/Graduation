import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'package:graduation/screens/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName="/splash";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    SizeConfig().init(context);
    return Scaffold(
      body: Body(CurrentScreen:0, NumOfScreen: 3,),
    );
  }
}