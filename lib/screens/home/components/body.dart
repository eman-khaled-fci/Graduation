import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/components/already_have_account.dart';
import 'package:graduation/components/row_of_socal_card.dart';
import 'package:graduation/size_config.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../sign_up/sign_up_screen.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:// EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
           EdgeInsets.all(10),

            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:// EdgeInsets.symmetric(vertical: 50),
                    EdgeInsets.only(top: 20),
                    child:
                      SvgPicture.asset("assets/images/undraw_message_sent_re_q2kl.svg"
                          ,height: SizeConfig.screenHeight*0.4),


                  ),
                  SizedBox(height: SizeConfig.screenHeight*0.04,),
                  Text("Reduce your carbon footprint",textAlign: TextAlign.center,style: LightModeHeadersStyle,),
                  SizedBox(height: SizeConfig.screenHeight*0.01,),
                  Text("Taking control of our energy \nconsumption to make our planet safe",textAlign: TextAlign.center,style: LightModeSmallTextStyle,),
                  SizedBox(height: SizeConfig.screenHeight*0.075,),
                  DefaultButton(text:"Sign Up",press:(){
                    Navigator.pushNamed(context, SignUpScreen.routeName);


                  }),
                  SizedBox(height: SizeConfig.screenHeight*0.03,),
                  AlreadyHaveAccount(),
                  SizedBox(height: SizeConfig.screenHeight*0.035,),
                  Text("or Continue with",textAlign: TextAlign.center,style:ContinueWithTextStyle , ),
                  SizedBox(height: SizeConfig.screenHeight*0.02,),
                  RowOfSocalCards()

                ],
                
              ),
              
            ),
            
          ),
        )


    );


  }
}
