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
  String gender="male";

  bool value1 = true;

  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
  Container(
    width: 140,
    height: 160,
    decoration: BoxDecoration(
      color: LightGray,
        borderRadius: new BorderRadius.circular(14)

    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
       Align(

    alignment: Alignment.topLeft,
           child:Transform.scale(
         scale: 1.3,
             child: RadioListTile(
                 activeColor: LightModeMainColor,
                 value: "Male",
                 groupValue: gender,
                 onChanged:(value){
                   setState(() {
                     gender = value.toString();
                   });
                 }
             ),



         //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         //   value: value1,
         //   onChanged: (bool? value) {
         //     setState(() {
         //       this.value1 = value!;
         //     }
         //     );
         //   },
         //   activeColor: LightModeMainColor,
         //   checkColor: Colors.white,
         //   autofocus: true,
         // ),
       )
       )
      ,
       Align(child: SvgPicture.asset("assets/images/undraw_male_avatar_re_y880.svg" , height:SizeConfig.screenHeight*.09,), alignment: Alignment.topCenter,),
       Text("Male",style: textStyle,)
      

     ],

    ),

  ),
  SizedBox(height: SizeConfig.screenHeight*0.09,),
  Container(
    width: 140,
    height: 160,
    decoration: BoxDecoration(
        color: LightGray,
        borderRadius: new BorderRadius.circular(4)

    ),
    child: Column(
      children: [
        Align(

            alignment: Alignment.topLeft,
            child:Transform.scale(
              scale: 1.3,

              child: RadioListTile(
                  activeColor: LightModeMainColor,
                  value: "Female",
                  groupValue: gender,
                  onChanged:(value){
                    setState(() {
                      gender = value.toString();
                    });
                  }
              )


              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              //   value: value2,
              //   onChanged: (bool? value) {
              //     setState(() {
              //       this.value2 = value!;
              //     }
              //     );
              //   },
              //   activeColor: LightModeMainColor,
              //   checkColor: Colors.white,
              //   autofocus: true,
              // ),
            ))
        ,
        Align(child: SvgPicture.asset("assets/images/undraw_female_avatar_re_l6cx.svg" , height:SizeConfig.screenHeight*.09,), alignment: Alignment.topCenter,),
        Text("Female",style: textStyle,),

      ],

    ),


  ),


],


    );
  }
}
