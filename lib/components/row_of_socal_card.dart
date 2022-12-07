import 'package:flutter/material.dart';
import 'package:graduation/components/socal_card.dart';
class RowOfSocalCards extends StatelessWidget {
  const RowOfSocalCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SocalCard(icon: "assets/icons/logos_google-icon.svg",press: (){},),
    SocalCard(icon: "assets/icons/entypo-social_twitter-with-circle.svg",press: (){},),
    SocalCard(icon: "assets/icons/logos_facebook.svg",press: (){},),
],
);
  }
}
