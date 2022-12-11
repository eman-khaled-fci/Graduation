import 'package:flutter/material.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
import 'package:graduation/screens/sign_in/sign_in_screen.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(

            child: Column(
              children: [
                TopBar(text:"",press: (){
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },),
                Align(child: SvgPicture.asset("assets/new/ForgetPassword.svg" , height:SizeConfig.screenHeight*.38,), alignment: Alignment.topCenter,),
                Align(child: Text("Forget Password" , style: LightModeHeadersStyle ),alignment: Alignment.topLeft,),
                // Text("we have sent a code to your phone number,")
                SizedBox(height: SizeConfig.screenHeight*0.013),
                Align(child: Text("Enter your email that associated with your account to reset your password", style: LightModeSmallTextStyle,),
                  alignment: Alignment.topLeft,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.07),
                Align(child: Text(" Your Email",style:textStyle), alignment: Alignment.topLeft,),
                SizedBox(height: SizeConfig.screenHeight*0.012,),





                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Tohamiii@gmail.com" , suffixIcon: CustomSuffixIcon(svgIcon: "assets/new/email.svg",),
                    hintStyle: InputTextStyle,
                    labelStyle: InputTextStyle,
                    filled: true,
                    fillColor: LightModeLightGreenColor,
                    contentPadding: EdgeInsets.all(13),
                    enabledBorder: OutlineInputBorder(borderSide:
                    BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(15))

                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight*0.06,),

                Container(
                  child: DefaultButton(text: "Continue",press: (){
                    Navigator.pushNamed(context, OtpScreen.routeName);

                  },),
                )]
            ),),),),
    );
  }
}



