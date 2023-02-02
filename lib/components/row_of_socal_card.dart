import 'package:flutter/material.dart';
import 'package:graduation/components/socal_card.dart';
import 'package:graduation/screens/complete_profile/complete_profile_screen.dart';
import 'package:graduation/screens/create_new_password/create_new_password_screen.dart';
import 'package:graduation/services/api_service.dart';
class RowOfSocalCards extends StatelessWidget {
  const RowOfSocalCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SocalCard(icon: "assets/icons/logos_google-icon.svg",press: (){


      APIService.googleLogin().then((response) =>{
        if(response.status=="Added new user"){
          print("Added new user "),
          print("token "+response.token!),
          Navigator.pushNamed(context, CompleteProfileScreen.routeName)


        }
        else{
          print("Already registered"),
          print(response.status),
          // print("status "+response.status!),
          // print("Already registered"),
          // print("token "+response.token!),
          //navigate to the start of the app directly
          Navigator.pushNamed(context, CreateNewPasswordScreen.routeName)
      }
      });


    },),
    SocalCard(icon: "assets/icons/entypo-social_twitter-with-circle.svg",press: (){},),
    SocalCard(icon: "assets/icons/logos_facebook.svg",press: (){},),
],
);
  }
}
