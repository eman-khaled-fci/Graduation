import 'package:flutter/material.dart';
import 'package:graduation/components/custom_suffix_icon.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
import 'package:graduation/size_config.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  String _EmailErrorMessage = '';
  bool _flag1 = false;
  @override
  Widget build(BuildContext context) {
      return Column(
        children: [
          Align(child: Text(" Your Email",style:textStyle), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.012,),





          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (val) {
              validateEmail(val);
            },
            decoration: InputDecoration(
                border: InputBorder.none,
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


          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(_EmailErrorMessage, style: ErrorsTextStyle,),
          ), alignment: Alignment.topLeft,),
         // SizedBox(height: SizeConfig.screenHeight * 0.01,),
          SizedBox(height: SizeConfig.screenHeight*0.06,),

          Container(
            child: DefaultButton(text: "Continue",press: (){
              Navigator.pushNamed(context, OtpScreen.routeName);

            },),
          )

        ],
      );
  }
  bool ifThereIsError(String errorMessage , bool _flag){
    if(errorMessage.isNotEmpty ){
      return true;
    }
    else if(errorMessage=="" && _flag == false ){
      return true;
    }
    else{
      return false;
    }

  }

  bool isOk() {
    //print(_flag);
    if (

    ifThereIsError(_EmailErrorMessage,_flag1)


    ) {
      return false;
    }
    return true;
  }
  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _EmailErrorMessage = kEmailNullError;
      });
    } else if (!emailValidatorRegExp.hasMatch(val)) {
      setState(() {
        _EmailErrorMessage = kInvalidEmailError;
      });
    } else {
      setState(() {
        _EmailErrorMessage = "";

      });
      _flag1=true;
    }
  }


}
