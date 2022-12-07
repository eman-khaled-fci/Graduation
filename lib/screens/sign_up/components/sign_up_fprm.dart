import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/size_config.dart';
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
          Text("First Name "),
          buildConfPasswordFormField(),
        ],
      ),

    );
  }

  Padding buildConfPasswordFormField(){

    return Padding(
        padding:
         EdgeInsets.all(0),
         child: Container(
              decoration: BoxDecoration(
              color: MyLightModeLightGreenColor,
              borderRadius: new BorderRadius.circular(17.0),
    ),


  child: Padding(
  padding: EdgeInsets.all(0),
    child: TextFormField(
      decoration: InputDecoration(
    border: InputBorder.none,
    labelText: 'Omar',

    ),

    ),
    ),


    ))



    ;



  }


}
