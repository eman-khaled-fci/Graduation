import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
class EditProfileTopBar extends StatelessWidget {
  const EditProfileTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // width: double.infinity,
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
              width: getProportionateScreenWidth(40),
      height: getProportionateScreenHeight(40),
      child: TextButton(
        style: TextButton.styleFrom(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              primary: Colors.white,
              backgroundColor: LightModeMainColor,
        ),
        onPressed: (){},
        child: Image.asset("assets/icons/mdi_arrow-back.png"
                ,height: SizeConfig.screenHeight*0.06),
      ),
    ),
            ],
          )
 //   SizedBox(width: 80,),

          ,Row(

mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   width: getProportionateScreenWidth(40),
              //   height: getProportionateScreenHeight(40),
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //       shape:
              //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              //       primary: Colors.white,
              //       backgroundColor: LightModeMainColor,
              //     ),
              //     onPressed: (){},
              //     child: Image.asset("assets/icons/mdi_arrow-back.png"
              //         ,height: SizeConfig.screenHeight*0.06),
              //   ),
              // ),
              // SizedBox(width: 80,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 // SizedBox(height: 10,),
                  Container(
                    width: getProportionateScreenWidth(80
                    ),
                    height: getProportionateScreenHeight(80),


                    child: Image.asset("assets/images/profile_img.png"),


                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Edit Your Profile",style: ProfileItemHeadline,),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
