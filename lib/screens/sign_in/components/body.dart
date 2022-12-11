import 'package:flutter/material.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/components/forget_password.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/complete_profile/complete_profile_screen.dart';
import 'package:graduation/screens/sign_in/components/sign_in_form.dart';
import 'package:graduation/screens/sign_in/sign_in_screen.dart';
import 'package:graduation/screens/sign_up/components/sign_up_form.dart';
import 'package:graduation/size_config.dart';



class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SizedBox(

      child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child:
          Column(
            children: [
              TopBar(text: "      Login Page",press:(){Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CompleteProfileScreen()),
              );}),
              Align(child: SvgPicture.asset("assets/images/undraw_login_re_4vu2.svg" , height:SizeConfig.screenHeight*.4,), alignment: Alignment.topCenter,),
             // SizedBox(height: SizeConfig.screenHeight*0.01),
              SignInForm(),
              SizedBox(height: SizeConfig.screenHeight*0.05),
              DefaultButton(text: "Log in",press: (){},),
              SizedBox(height: SizeConfig.screenHeight*0.02),
              ForgetPassword(),


            ],

          )


          ,

        ),
      ),

    ));
  }
}
