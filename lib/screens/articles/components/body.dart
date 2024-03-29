import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/regression1_page/regression1_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../home_page/home_page_screen.dart';
import '../../plant1_page/plant1_screen.dart';
import '../article_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),

      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Color(0xFFB4B4B4),//edittttttttttttttttttttttttttttttttt
          splashColor: LightModeMainColor,
          foregroundColor: Colors.white,
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
                  style: TextStyle(fontSize: 9,),),),],),
          onPressed: () {Navigator.pushNamed(context, HomePageScreen.routeName);},
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
                    onTap: (){Navigator.pushNamed(context, Regression1Screen.routeName);},
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
                    onTap: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
                    child: Image.asset("assets/images/Vector.png",
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
                    onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
                    child: Image.asset("assets/images/ooui_articles-ltr.png",
                      width: 25,
                      height: 25,
                    color: Color(0xFF0A7036),),
                  ),
                  SizedBox(height: SizeConfig.screenHeight*0.01,),
                  Text("Articles",
                    style: TextStyle(
                      fontSize: 10,
                      color: LightModeMainColor,
                    ),)
                ],
              ),),

            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: (){},
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

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.05,),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(40),
                  height: getProportionateScreenHeight(40),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      primary: Colors.white,
                      backgroundColor: LightModeMainColor,
                    ),
                    onPressed: (){Navigator.pushNamed(context, HomePageScreen.routeName);},
                    child: Image.asset("assets/icons/mdi_arrow-back.png"
                        ,height: SizeConfig.screenHeight*0.06),
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth*0.23,),

                Text("Articles",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: LightModeSmallTextColor
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Why ",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: LightModeMainColor,
                      ),),
                      Text("this matters ?",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: LightModeSmallTextColor,
                      ),),
                    ],
                  ),

                  SizedBox(height: SizeConfig.screenHeight*0.02,),

                  Text("The carbon footprint is also an important component of the\nEcological Footprint",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins3",
                    color: LightModeSmallTextColor,
                  ),),

                  SizedBox(height: SizeConfig.screenHeight*0.06,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Recommended Good Articles :",
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: "Poppins",
                        color: LightModeSmallTextColor,
                      ),
                    ),
                  ),

                  SizedBox(height: SizeConfig.screenHeight*0.03,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Row(
                          children: [
                            Container(
                              width: 370,
                              height: 90,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/pexels-pixabay-39553.jpg"),
                                  fit: BoxFit.fill
                                ),
                                  borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10,top: 15),
                                    child: Text("The story of climate change",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10,),
                                    child: Text("Our space oasis is over-heating",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: SizeConfig.screenHeight*0.02,),

                      GestureDetector(
                        onTap: (){},
                        child: Row(
                          children: [
                            Container(
                              width: 370,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("assets/images/pexels-tim-mossholder-1708845.jpg"),
                                fit: BoxFit.fill
                              )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10,top: 15),
                                    child: Text("What is a carbon footprint ?",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10,),
                                    child: Text("Start by looking at a carbon footprint",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: SizeConfig.screenHeight*0.02,),

                      GestureDetector(
                        onTap: (){},
                        child: Row(
                          children: [
                            Container(
                              width: 370,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/pexels-muhammad-khairul-iddin-adnan-808510.jpg"),
                                  fit: BoxFit.fill,
                                )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10,top: 15),
                                    child: Text("Reduce your carbon footprint",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text("Explore the issues around climate change",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}
