import 'package:flutter/material.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/size_config.dart';

import '../../otp/components/body.dart';


class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {


  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode=FocusNode();
    pin3FocusNode=FocusNode();
    pin4FocusNode=FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pin2FocusNode?.dispose();
    pin3FocusNode?.dispose();
    pin4FocusNode?.dispose();
    super.dispose();
  }

  void nextField (String value , FocusNode focusNode){
    if(value.length==1){
      focusNode.requestFocus();
    }
  }




  @override
  Widget build(BuildContext context) {
    return Form(

      child: Column(

        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [

               Container(
                  width: 45,
                  height: 50,
                  decoration:
                  BoxDecoration(
                    color: LightModeLightGreenColor,
                    borderRadius: new BorderRadius.circular(4)
                  ),

                  child: SizedBox(
                    width: getProportionateScreenWidth(34),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autofocus: true,
                        style: TextStyle(
                            fontSize: 24),
                        keyboardType: TextInputType.number,
                        //obscureText: true,
                        textAlign: TextAlign.center,
                       decoration: bindecoration,
                        onChanged: (value){
                          // also you need to store your value
                          nextField(value,pin2FocusNode!);

                        },

                      ),

                  ),
                ),
              ),
             SizedBox(width: SizeConfig.screenWidth*0.06),
              Container(

                width: 45,
                height: 50,
                decoration:
                BoxDecoration(
                    color: LightModeLightGreenColor,
                    borderRadius: new BorderRadius.circular(4)
                ),


                child: SizedBox(

                  width: getProportionateScreenWidth(34),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      focusNode: pin2FocusNode,
                      style: TextStyle(
                          fontSize: 24),
                      keyboardType: TextInputType.number,
                     // obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: bindecoration,
                      onChanged: (value){
                        nextField(value,pin3FocusNode!);

                      },

                    ),
                  ),
                ),
              ),
            SizedBox(width: SizeConfig.screenWidth*0.06),
              Container(
                width: 45,
                height: 50,
                decoration:
                BoxDecoration(
                    color: LightModeLightGreenColor,
                    borderRadius: new BorderRadius.circular(4)
                ),


                child: SizedBox(
                  width: getProportionateScreenWidth(34),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      focusNode: pin3FocusNode,
                      style: TextStyle(
                          fontSize: 24),
                      keyboardType: TextInputType.number,
                     // obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: bindecoration,
                      onChanged: (value){
                        nextField(value,pin4FocusNode!);

                      },

                    ),
                  ),
                ),
              ),
             SizedBox(width: SizeConfig.screenWidth*0.06),
              Container(

                width: 45,
                height: 50,
                decoration:
                BoxDecoration(
                    color: LightModeLightGreenColor,
                    borderRadius: new BorderRadius.circular(4)
                ),


                child: SizedBox (
                  width: getProportionateScreenWidth(60),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      focusNode: pin4FocusNode,
                      style: TextStyle(
                          fontSize: 24),
                      keyboardType: TextInputType.number,
                     // obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: bindecoration,
                      onChanged: (value){
                        pin4FocusNode?.unfocus();

                      },

                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
