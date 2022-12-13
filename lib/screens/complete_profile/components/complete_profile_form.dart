import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/complete_profile/components/gender_form.dart';
import 'package:graduation/size_config.dart';

import '../../../components/default_button.dart';


class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {


 // final _formKey = GlobalKey<FormState>();

  String? newpassword;
  String? conform_password;

  String _universityErrorMessage = '';
  String _collegeErrorMessage = '';
  bool _flag1 = false;
  bool _flag2 = false;


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

        SizedBox(height: SizeConfig.screenHeight*0.03,),
        GenderForm(),
        SizedBox(height: SizeConfig.screenHeight*0.08,),
        Container(
          child: DefaultButton(text: "Register",press:isOk()? () {
            //Navigator

          }:null ,),alignment: Alignment.bottomCenter,),
        SizedBox(height: SizeConfig.screenHeight*0.03),

    ]
    );
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
              onChanged: (val) {
                validateUniversityField(val);

              },
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
              onChanged: (val) {
                validateCollegeField(val);

              },
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

    ifThereIsError(_universityErrorMessage,_flag1) || ifThereIsError(_collegeErrorMessage,_flag2)


    ) {
      return false;
    }
    return true;
  }

  void validateUniversityField(String val) {

    if (val.isEmpty) {
      setState(() {
        _universityErrorMessage = kUniversityNullError;
      });

      // will we check if the input exists in a list
    } else if (val.length < 4) {
      setState(() {
        _universityErrorMessage = kUniversityInvalidError;
      });

    } else {
      setState(() {
        _universityErrorMessage = "";


      });
      _flag1=true;
    }
    return null;
  }


  void validateCollegeField(String val) {

    if (val.isEmpty) {
      setState(() {
        _collegeErrorMessage = kCollegeNullError;
      });

      // will we check if the input exists in a list
    } else if (val.length < 4) {
      setState(() {
        _collegeErrorMessage = kCollegeInvalidError;
      });

    } else {
      setState(() {
        _collegeErrorMessage = "";


      });
      _flag2=true;
    }
    return null;
  }


}
































