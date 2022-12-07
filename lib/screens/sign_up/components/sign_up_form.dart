import 'package:flutter/material.dart';
import 'package:graduation/components/already_have_account.dart';
import 'package:graduation/components/custom_suffix_icon.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  String? phoneNumber;



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
          Align(child: Text("First Name",style: textStyle,), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.012,),
          buildFirstNameFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
          ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.01,),


          Align(child: Text("Second Name",style: textStyle,), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.012,),
          buildSecondNameFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
          ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.01,),



          Align(child: Text("Email",style: textStyle,), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.012,),
          buildEmailFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
          ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.01,),



          Align(child: Text("Password",style: textStyle,), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.012,),
          buildPasswordFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
          ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.01,),



          Align(child: Text("Confirm Password",style: textStyle,), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.012,),
          buildConfirmPasswordFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text("Name should be at Least 3 chars !",style: ErrorsTextStyle,),
          ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.02,),




          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Column(
          //     children: [
          //       Text("We have sent a code to your phone \n" , style: LightModeSmallTextStyle,),
          //       Row(
          //         children: [
          //           Text("number, please ",style: LogInTextStyle,),
          //           Text("enter the code...", style: LightModeSmallTextStyle)
          //         ],
          //       ),
          //     ],
          //   ),
          // )

        ],
      ),

    );
  }

  Padding buildFirstNameFormField(){

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
    hintText: 'Omar',
        hintStyle: InputTextStyle,
        labelStyle: InputTextStyle,
        suffixIcon:

        CustomSuffixIcon(svgIcon: "assets/icons/material-symbols_person-rounded.svg",)


        //SvgPicture.asset("")

    ),

    ),
    ),


    ))



    ;



  }
  Padding buildSecondNameFormField(){

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
                  hintText: 'Khalid',
                  hintStyle: InputTextStyle,
                  labelStyle: InputTextStyle,
                  suffixIcon:

                  CustomSuffixIcon(svgIcon: "assets/icons/material-symbols_person-rounded.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),


        ))



    ;



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


}
