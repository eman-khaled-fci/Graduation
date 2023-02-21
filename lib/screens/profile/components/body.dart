import 'package:flutter/material.dart';
import 'package:graduation/screens/profile/components/profile_bar.dart';

import '../../../components/top_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../home/home_screen.dart';
import 'item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(


        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            backgroundColor: LightModeMainColor,//edittttttttttttttttttttttttttttttttt
            elevation: 0,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10,bottom: 5),
                  child: Image.asset("assets/images/Icon.png",
                    width: 25,
                    height: 25,),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Home",
                    style: TextStyle(fontSize: 9,),),
                ),
              ],
            ),
            onPressed: () {  },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [

              Padding(
                padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      //onTap: (),
                      child: Image.asset("assets/images/icon-park-solid_analysis.png",
                        width: 25,
                        height: 25,),),
                    SizedBox(height: SizeConfig.screenHeight*0.01,),
                    Text("Regression",
                      style: TextStyle(
                        fontSize: 10,
                        color: LightModeSmallTextColor,
                      ),)
                  ],
                ),),

              Padding(
                padding: EdgeInsets.only(top: 10,bottom: 10,right: 80),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      //onTap: (),
                      child: Image.asset("assets/images/Vector.png",
                        //color: Colors.green,
                        width: 25,
                        height: 25,),
                    ),
                    SizedBox(height: SizeConfig.screenHeight*0.01,),
                    Text("Plants",
                      style: TextStyle(
                        fontSize: 10,
                        color: LightModeSmallTextColor,
                      ),)
                  ],
                ),),

              Padding(
                padding: EdgeInsets.only(top: 10,right: 20,bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      //onTap: (),
                      child: Image.asset("assets/images/ooui_articles-ltr.png",
                        width: 25,
                        height: 25,),
                    ),
                    SizedBox(height: SizeConfig.screenHeight*0.01,),
                    Text("Articles",
                      style: TextStyle(
                        fontSize: 10,
                        color: LightModeSmallTextColor,
                      ),)
                  ],
                ),),

              Padding(
                padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      //onTap: (),
                      child: Image.asset("assets/images/material-symbols_person.png",
                        width: 25,
                        height: 25,),),
                    SizedBox(height: SizeConfig.screenHeight*0.01,),
                    Text("Profile",
                      style: TextStyle(
                        fontSize: 10,
                        color: LightModeSmallTextColor,
                      ),)
                  ],
                ),),
            ],
          ),
        ),











        body: Container(
          color: //Color(0xFFF5F5F5),
          LightGray
          ,
          height: double.infinity,
          child: SizedBox(
              child: Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TopBar(
                        text: "            Profile ",
                        press: () {
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        },
                      ),
                      SizedBox(
                        height: 41,
                      ),
                      Container(
                        height: 104,
                        decoration: BoxDecoration(
                          color: DarkGreen,
                          borderRadius: new BorderRadius.circular(8.0),
                        ),
                        child: ProfileBar(
                          name: "Omar Khaled",
                          description: "#" + "student",
                          image: "assets/images/profile_img.png",
                        ),
                      ),
                      SizedBox(
                        height: 41,
                      ),
                      Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Item(headLine: "My Account",detail: "Make changes to your account",
                            image: "assets/images/Profile.png",
                              press: (){},

                            ),
                            Item(headLine: "Your Progress",detail: "Manage your saved account",
                              image: "assets/images/Profile.png",
                              press: (){},

                            ),
                            Item(headLine: "Help & Support ",detail: "",
                              image: "assets/images/Profile.png",
                              press: (){},

                            ),
                                Item(headLine: "About App",detail: "",
                              image: "assets/images/Heart.png",
                              press: (){},

                            ),
                            Item(headLine: "Log out",detail: "secure your account for safety",
                              image: "assets/images/Logout.png",
                              press: (){},

                            ),



                          ],
                        ),
                      )




















                    ],











                  ),
                ),
              )),
        ),
      ),
    );
  }
}
