import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderForm extends StatefulWidget {
  const GenderForm({Key? key}) : super(key: key);

  @override
  State<GenderForm> createState() => _GenderFormState();
}

class _GenderFormState extends State<GenderForm> {
  final _formKey = GlobalKey<FormState>();

  bool value1 = false;

  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
  Container(
    width: 150,
    height: 180,
    decoration: BoxDecoration(
      color: LightModeLightGreenColor,
        borderRadius: new BorderRadius.circular(4)

    ),
    child: Column(
     children: [
       Align(

    alignment: Alignment.topLeft,
           child:Transform.scale(
         scale: 1.3,
         child: Checkbox(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           value: value1,
           onChanged: (bool? value) {
             setState(() {
               this.value1 = value!;
             }
             );
           },
           activeColor: LightModeMainColor,
           checkColor: Colors.white,
           autofocus: true,
         ),
       ))
      ,
       Align(child: SvgPicture.asset("assets/images/undraw_male_avatar_re_y880.svg" , height:SizeConfig.screenHeight*.11,), alignment: Alignment.topCenter,),
       Text("Male",style: ContinueWithTextStyle,)
      

     ],

    ),

  ),
  SizedBox(height: SizeConfig.screenHeight*0.06,),
  Container(
    width: 150,
    height: 180,
    decoration: BoxDecoration(
        color: LightModeLightGreenColor,
        borderRadius: new BorderRadius.circular(4)

    ),
    child: Column(
      children: [
        Align(

            alignment: Alignment.topLeft,
            child:Transform.scale(
              scale: 1.3,
              child: Checkbox(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                value: value1,
                onChanged: (bool? value) {
                  setState(() {
                    this.value1 = value!;
                  }
                  );
                },
                activeColor: LightModeMainColor,
                checkColor: Colors.white,
                autofocus: true,
              ),
            ))
        ,
        Align(child: SvgPicture.asset("assets/images/undraw_male_avatar_re_y880.svg" , height:SizeConfig.screenHeight*.11,), alignment: Alignment.topCenter,),
        Text("Male",style: ContinueWithTextStyle,)


      ],

    ),

  ),


],









    );
  }
}
