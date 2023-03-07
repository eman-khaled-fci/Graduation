import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/articles/article_screen.dart';
import 'package:graduation/screens/home_page/home_page_screen.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/regression1_page/regression1_screen.dart';
import 'package:graduation/screens/regression2_page/regression2_screen.dart';
import 'package:graduation/size_config.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

 List<String> itemsF =['From','2014','2015','2016','2017','2018','2019','2020','2021','2022'];
 String? SelectedItemF = 'From';

 List<String> itemsT =['To','2014','2015','2016','2017','2018','2019','2020','2021','2022'];
 String? SelectedItemT = 'To';


 @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Color(0xFFB4B4B4),//editttttttttt
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
                      height: 25,
                      color: Color(0xFF0A7036) ,),),
                  SizedBox(height: SizeConfig.screenHeight*0.01,),
                  Text("Regression",
                    style: TextStyle(
                      fontSize: 10,
                      color: LightModeMainColor,
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

      body:
      SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
         child:
        Center(
          child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.05,),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: getProportionateScreenWidth(40),
                    height: getProportionateScreenHeight(40),
                    child:
                    TextButton(
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
                ), //back arrow

                SizedBox(height: SizeConfig.screenHeight*0.02,),

                Container(
                  child: Image.asset("assets/images/statistics.jpeg"),
                  //width: double.infinity,
                  height: 300,
                ),

                Text("Suez University Regression",style: TextStyle(
                  color: LightModeMainColor,
                  fontFamily: "Poppins",
                  fontSize: 21,
                )),

                SizedBox(height: SizeConfig.screenHeight*0.015,),

                Text("Know your university carbon footprint",style: TextStyle(
                  color: LightModeSmallTextColor,
                  fontFamily: "Poppins1",
                  fontSize: 20,
                )),

                SizedBox(height: SizeConfig.screenHeight*0.02,),

                Container(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      //From list
                      Container(
                        width: 100,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12,width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: DropdownButton<String>(
                          iconSize: 27,
                          icon: Icon(Icons.arrow_drop_down,color: LightModeMainColor,),
                          isExpanded: true,
                          value: SelectedItemF,
                          onChanged: (item)=> setState(() => SelectedItemF = item),
                          items: itemsF
                          .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item,style: TextStyle(
                              fontSize: 15,
                              color: LightModeMainColor,
                            ),),
                          ))
                          .toList(),
                        ),
                      ),

                      //TO list
                      Container(
                        width: 100,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12,width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: DropdownButton<String>(
                          iconSize: 27,
                          icon: Icon(Icons.arrow_drop_down,color: LightModeMainColor,),
                          isExpanded: true,
                          value: SelectedItemT,
                          onChanged: (item)=> setState(() => SelectedItemT = item),
                          items: itemsT
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item,style: TextStyle(
                              fontSize: 15,
                              color: LightModeMainColor,
                            ),),
                          ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: SizeConfig.screenHeight*0.06,),

                Container(
                  height: 58,
                  width: 360,

                  child: ElevatedButton(

                    onPressed: () {Navigator.pushNamed(context, Regression2Screen.routeName);},
                    child: Text(
                      "Get Result",
                      style: TextStyle(fontSize: 22,fontFamily: "Poppins"),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      padding: EdgeInsets.only(right: 40,left: 40),
                      primary: Colors.white,
                      backgroundColor: LightModeMainColor,
                    ),
                  ),
                )
              ],
            ),
        ),

        ),
      ),

    );

  }
}

