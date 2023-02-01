import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:graduation/components/splash_page.dart';
import 'package:graduation/constants.dart';

import '../../../size_config.dart';
class Body extends StatelessWidget {
  const Body({Key? key, required this.CurrentScreen, required this.NumOfScreen}) : super(key: key);

  final int NumOfScreen;
  final int CurrentScreen;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [

          Container(
            decoration: BoxDecoration (
                image: DecorationImage(
                  image: AssetImage("assets/images/pexels-rafael-valera-3679641.jpg"), fit: BoxFit.cover,)
            ),
            child: Column(
              children: [
              //Padding(padding: EdgeInsets.only(left: 50, top: 500)) ,
                SizedBox(height: SizeConfig.screenHeight*0.6),
              Text("Our future to choose", style: TextStyle(color: Colors.white, fontSize: 32, fontFamily: "Poppins",fontWeight: FontWeight.w600 ),textAlign: TextAlign.center,),
                SizedBox(height: SizeConfig.screenHeight*0.005),
                Text("Respond with positive, \npractical actions",textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 20, fontFamily:"Poppins",fontWeight: FontWeight.w300 ),),
                SizedBox(height: SizeConfig.screenHeight*0.04),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i=0 ; i<NumOfScreen ; i++)
                      createProgressDots((i == CurrentScreen)?true:false)

                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.116),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("Next  ➞",style: TextStyle(fontSize: 23),),
                      style:ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15))),
                      padding: EdgeInsets.symmetric(vertical: 22,horizontal: 27),
                      primary: Colors.white,
                      backgroundColor: LightModeMainColor,
                    ),)
                  ],
                )
    ],),
          ),



          Container(
            decoration: BoxDecoration (
                image: DecorationImage(
                  image: AssetImage("assets/images/photo_2022-12-27_23-11-17.jpg"), fit: BoxFit.cover,)
            ),
            child: Column(
              children: [
                //Padding(padding: EdgeInsets.only(left: 50, top: 500)) ,
                SizedBox(height: SizeConfig.screenHeight*0.6),
                Text("Shift the culture", style: TextStyle(color: Colors.white, fontSize: 32, fontFamily: "Poppins",fontWeight: FontWeight.w600 ),textAlign: TextAlign.center,),
                SizedBox(height: SizeConfig.screenHeight*0.005),
                Text("Advocate for change by discovering satisfying ways to live",textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 20, fontFamily:"Poppins",fontWeight: FontWeight.w300 ),),
                SizedBox(height: SizeConfig.screenHeight*0.04),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i=0 ; i<NumOfScreen ; i++)
                      createProgressDots((i == CurrentScreen)?true:false)

                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.116),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("Next  ➞",style: TextStyle(fontSize: 23),),
                      style:ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15))),
                        padding: EdgeInsets.symmetric(vertical: 22,horizontal: 27),
                        primary: Colors.white,
                        backgroundColor: LightModeMainColor,
                      ),)
                  ],
                ),

              ],),
          ),




          Container(
            decoration: BoxDecoration (
                image: DecorationImage(
                  image: AssetImage("assets/images/photo_2022-12-27_23-11-16.jpg"), fit: BoxFit.cover,)
            ),
            child:Column(
              children: [
                //Padding(padding: EdgeInsets.only(left: 50, top: 500)) ,
                SizedBox(height: SizeConfig.screenHeight*0.6),
                Text("Restore a healthy Earth", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "Poppins",fontWeight: FontWeight.w600 ),textAlign: TextAlign.center,),
                SizedBox(height: SizeConfig.screenHeight*0.005),
                Text("Join a global community\ncaring for our shared planet",textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 19, fontFamily:"Poppins",fontWeight: FontWeight.w300 ),),
                SizedBox(height: SizeConfig.screenHeight*0.04),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i=0 ; i<NumOfScreen ; i++)
                      createProgressDots((i == CurrentScreen)?true:false)

                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.116),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("Next  ➞",style: TextStyle(fontSize: 23),),
                      style:ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15))),
                        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 27),
                        primary: Colors.white,
                        backgroundColor: LightModeMainColor,
                      ),)
                  ],
                )
              ],),
          ),


        ],),
    );
  }}
Widget createProgressDots(bool isActiveScreen){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
    height: isActiveScreen? 15: 12,
    width: isActiveScreen? 15: 12,
    decoration: BoxDecoration(
      color: isActiveScreen? LightModeMainColor:  Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  );

}
