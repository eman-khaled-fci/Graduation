import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/components/already_have_account.dart';
import 'package:graduation/size_config.dart';

import '../../../components/defaulr_button.dart';
import '../../../constants.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:// EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
           EdgeInsets.all(0),

            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50),

                    child:
                      SvgPicture.asset("assets/images/FirstPage.svg",height: SizeConfig.screenHeight*0.4),


                  ),
                  Text("Reduce your carbon footprint",textAlign: TextAlign.center,style: LightModeHeadersStyle,),
                  Text("Taking control of our energy \nconsumption to make our planet safe",textAlign: TextAlign.center,style: LightModeSmallTextStyle,),
                  AlreadyHaveAccount(),
                  DefaultButton(text:"Sign Up",press:(){
                   // Navigator.pushNamed(context, SignUpScreen.routeName),


                  }),
                ],
                
              ),
              
            ),
            
          ),
        )


    );


  }
}
