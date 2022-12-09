import 'package:flutter/material.dart';
import 'package:graduation/components/already_have_account.dart';
import 'package:graduation/components/custom_suffix_icon.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool value = false;

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
   return Form(
        key: _formKey,
        child: Column(
        children: [
          Align(child: Text("Your Email",style: textStyle,), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.012,),
          buildEmailFormField(),
          // Align(child: Padding(
          //   padding: const EdgeInsets.only(left: 12),
          //   child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
          // ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.006,),


          SizedBox(height: SizeConfig.screenHeight*0.02,),
          Align(child: Text("Password",style: textStyle,), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.012,),
          buildPasswordFormField(),
          // Align(child: Padding(
          //   padding: const EdgeInsets.only(left: 12),
          //   child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
          // ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.006,),


          Row(
            children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    value: value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      }
                      );
                  },
                    activeColor: LightModeMainColor,
                    checkColor: Colors.white,
                    autofocus: true,
                  ),
                ),

              Text("Remember me ?",style: ContinueWithTextStyle,)
              



            ],
          )



        ]
   )
   );
  }
}

Padding buildEmailFormField(){

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
                hintText: 'tohamiii@gmail.com',
                hintStyle: InputTextStyle,
                labelStyle: InputTextStyle,
                suffixIcon:

                CustomSuffixIcon(svgIcon: "assets/icons/mdi_email.svg",)


              //SvgPicture.asset("")

            ),

          ),
        ),


      ))



  ;



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
