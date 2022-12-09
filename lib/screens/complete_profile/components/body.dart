import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/screens/complete_profile/components/complete_profile_form.dart';
import 'package:graduation/screens/complete_profile/components/gender_form.dart';
import 'package:graduation/size_config.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SizedBox(
    width: double.infinity,
    child: Padding(
        padding: EdgeInsets.all(24),
    child: SingleChildScrollView(

    child: Column(
    children: [
    TopBar(text:"Finish Your Profile",press: (){},),
      CompleteProfileForm(),
      SizedBox(height: SizeConfig.screenHeight*0.04,),
      GenderForm(),



    ]
    )
    )
    )
    )
    )
    ;
  }
}
