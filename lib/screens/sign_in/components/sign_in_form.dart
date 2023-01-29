import 'package:flutter/material.dart';
import 'package:graduation/components/already_have_account.dart';
import 'package:graduation/components/custom_suffix_icon.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/models/login_request_model.dart';
import 'package:graduation/screens/sign_up/sign_up_screen.dart';
import 'package:graduation/services/api_service.dart';
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
  String _EmailErrorMessage = '';
  String _PasswordErrorMessage = '';
  bool _flag1 = false;
  bool _flag2 = false;

  var _isObscured;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  void initState(){
    super.initState();
    _isObscured = true;
  }



  Widget build(BuildContext context) {
   return Form(
        key: _formKey,
        child: Column(
        children: [
          Align(child: Text("Your Email",style: textStyle,), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.011,),
          buildEmailFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(_EmailErrorMessage,style: ErrorsTextStyle,),
          ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.005,),


          SizedBox(height: SizeConfig.screenHeight*0.01,),
          Align(child: Text("Password",style: textStyle,), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.011,),
          buildPasswordFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(_PasswordErrorMessage,style: ErrorsTextStyle,),
          ),alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight*0.005,),


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
          ),
          SizedBox(height: SizeConfig.screenHeight*0.04),
          DefaultButton(text: "Log in",press:isOk()? () {
            //Navigator.pushNamed(context, ForgetPasswordScreen.routeName);

            // mahmoud.yasser.fci3@gmail.com
            // 123456789
            // print("email : "+emailController.text);
            // print("password : "+ passwordController.text);


             LoginRequestModel model = LoginRequestModel(
                 email:emailController.text,
                 password:passwordController.text
             );
             APIService.login(model).then((response) =>{
               if(response){
                 print("succeed "),
                 Navigator.pushNamed(context, SignUpScreen.routeName)
               }
               else{
                 print("fail")

             }
             });




          }:null,),
          SizedBox(height: SizeConfig.screenHeight*0.02),



        ]
   )
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

    ifThereIsError(_EmailErrorMessage,_flag1) || ifThereIsError(_PasswordErrorMessage,_flag2)


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

  void validatePassword(String val){

    if (val.isEmpty) {
      setState(() {
        _PasswordErrorMessage = kPassNullError;
      });
    } else if (val.length<8) {
      setState(() {
        _PasswordErrorMessage = kShortPassError;
      });
    } else {
      setState(() {
        _PasswordErrorMessage = "";
      });

      _flag2=true;

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
              controller: emailController,
              onChanged: (val) {
                // val = _pass;
                validateEmail(val);
              },
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
        ));
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
              controller: passwordController,
              obscureText: _isObscured,
              onChanged: (val) {
                // val = _pass;
                validatePassword(val);
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  //hintText: '12345678',
                  hintStyle: InputTextStyle ,
                  labelStyle: InputTextStyle,
                  suffixIcon: IconButton(
                    color: LightModeMainColor,
                    padding: EdgeInsetsDirectional.only(end: 12.0),
                    icon: _isObscured ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                    onPressed: (){
                      setState(() {
                        _isObscured =! _isObscured;
                      });
                    },


                  )

                  //suffixIcon:
                  //CustomSuffixIcon(svgIcon: "assets/icons/mdi_eye-lock-open.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),


        ))



    ;



  }


}
