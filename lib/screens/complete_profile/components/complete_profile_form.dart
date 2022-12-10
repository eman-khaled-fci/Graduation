import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/size_config.dart';

import '../../../components/default_button.dart';


class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {


  final _formKey = GlobalKey<FormState>();

  String? newpassword;
  String? conform_password;




  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });

  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }





  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight*0.05,),
        Align(child: Text("University",style: textStyle,),
          alignment: Alignment.topLeft,),


          SizedBox(height: SizeConfig.screenHeight*0.019,),
          buildUniversityNameFormField(),
          // Align(child: Padding(
          //   padding: const EdgeInsets.only(left: 12),
          //   child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
          // ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.03,),


          SizedBox(height: SizeConfig.screenHeight*0.02,),
          Align(child: Text("College",style: textStyle,), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.012,),
          buildCollegeNameFormField(),
          // Align(child: Padding(
          //   padding: const EdgeInsets.only(left: 12),
          //   child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
          // ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.01,),


    SizedBox(height: SizeConfig.screenHeight*0.05,),
    Align(child: Text("Gender",style: textStyle),alignment: Alignment.centerLeft,),

    ]
    );
  }
}


Padding buildUniversityNameFormField(){

  return Padding(
      padding:
      EdgeInsets.all(0),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: LightModeLightGreenColor,
          borderRadius: new BorderRadius.circular(12.0),
        ),


        child: Padding(
          padding: EdgeInsets.only(left: 12),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Suez University',
                hintStyle: InputTextStyle,
                labelStyle: InputTextStyle,
               // suffixIcon:

               // CustomSuffixIcon(svgIcon: "assets/icons/material-symbols_person-rounded.svg",)


              //SvgPicture.asset("")

            ),
          ),
        ),
      ));

}

Padding buildCollegeNameFormField(){

  return Padding(
      padding:
      EdgeInsets.all(0),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: LightModeLightGreenColor,
          borderRadius: new BorderRadius.circular(12.0),
        ),


        child: Padding(
          padding: EdgeInsets.only(left: 12),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Computer Science',
              hintStyle: InputTextStyle,
              labelStyle: InputTextStyle,
              // suffixIcon:

              // CustomSuffixIcon(svgIcon: "assets/icons/material-symbols_person-rounded.svg",)


              //SvgPicture.asset("")

            ),

          ),
        ),
      ))
  ;
}