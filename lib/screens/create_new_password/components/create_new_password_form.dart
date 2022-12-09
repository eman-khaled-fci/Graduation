import 'package:flutter/material.dart';
import 'package:graduation/components/custom_suffix_icon.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/size_config.dart';

class CraeteNewPasswordForm extends StatefulWidget {
  const CraeteNewPasswordForm({Key? key}) : super(key: key);

  @override
  State<CraeteNewPasswordForm> createState() => _CraeteNewPasswordFormState();
}

class _CraeteNewPasswordFormState extends State<CraeteNewPasswordForm> {

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


        Align(child: Text("New Password",style: textStyle,), alignment: Alignment.topLeft,),
        SizedBox(height: SizeConfig.screenHeight*0.012,),
        buildPasswordFormField(),
        // Align(child: Padding(
        //   padding: const EdgeInsets.only(left: 12),
        //   child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
        // ),alignment: Alignment.topLeft,),
        SizedBox(height: SizeConfig.screenHeight*0.01,),


        SizedBox(height: SizeConfig.screenHeight*0.02,),
        Align(child: Text("Confirm Password",style: textStyle,), alignment: Alignment.topLeft,),
        SizedBox(height: SizeConfig.screenHeight*0.012,),
        buildConfirmPasswordFormField(),
        // Align(child: Padding(
        //   padding: const EdgeInsets.only(left: 12),
        //   child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
        // ),alignment: Alignment.topLeft,),
        SizedBox(height: SizeConfig.screenHeight*0.02,),




      ],
    );
  }
}


Padding buildPasswordFormField(){

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
            obscureText: true,
            decoration: InputDecoration(
                border: InputBorder.none,
                //hintText: '12345678',
                hintStyle: InputTextStyle ,
                labelStyle: InputTextStyle,
                suffixIcon:

                CustomSuffixIcon(svgIcon: "assets/icons/mdi_eye-lock-open.svg",)


              //SvgPicture.asset("")

            ),

          ),
        ),


      ))



  ;



}




Padding buildConfirmPasswordFormField(){

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
            obscureText: true,
            decoration: InputDecoration(
                border: InputBorder.none,
                // hintText: '12345678',
                hintStyle:InputTextStyle ,
                labelStyle: InputTextStyle,
                suffixIcon:

                CustomSuffixIcon(svgIcon: "assets/icons/mdi_eye-lock-open.svg",)


              //SvgPicture.asset("")

            ),

          ),
        ),


      ))



  ;



}
