import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [

              Flexible(
                  flex: 1,
                  child: Container(
                    child: Text("Your Result"
                      ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                      ),
                    padding: EdgeInsets.only(top:50,bottom:10 ),
                    height: 300,
                    color: Color(0xFF1CA953),
                  ),),
              Flexible(
                  flex: 2,
                  child: Container(
                    color: LightModeLightGreenColor,
                  )),
            ],
          ),


          Container(
            width: 360,
            height: 350,
            margin: EdgeInsets.fromLTRB(25, 100,25, 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,),

            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.018,),
                Text("Thanks!",
                  style: TextStyle(
                    color: Color(0xFF1CA953),
                    fontSize: 22,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600),),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text("Your Carbon Footprint is",
                style: TextStyle(
                    color: Color(0xFF474747),
                    fontSize: 19,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600),),
                SizedBox(height: SizeConfig.screenHeight*0.02,),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text("3.4%", //edittttttttttttttttt
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),),
                  alignment: Alignment.center,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),
                Text("The Highest Score",
                  style: TextStyle(
                      color: Color(0xFF474747),
                      fontSize: 19,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text("Food", //edittttttttttttttt
                  style: TextStyle(
                    color: Color(0xFF4ECB71),
                    fontSize: 23,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,),)
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.57,),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("See our advices for you :",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,),),
                alignment: Alignment.bottomLeft,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.03,),
              Container(
                width: SizeConfig.screenWidth,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 8,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.green[600],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    //SizedBox(width: SizeConfig.screenWidth*0.01,),
                    Text("Eat more vegetables",
                        style: TextStyle(
                          color: Color(0xFF474747),
                          fontSize: 19,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,)),
                    Container(
                      //padding: EdgeInsets.only(left:10),
                      width: 20,
                      height: 20,
                      child: Image(
                        image: AssetImage("assets/images/logos_todomvc.png"),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.01,),

              Container(
                width: SizeConfig.screenWidth,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 8,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.06,),
                    // Text("Eat more fruits",
                    //     style: TextStyle(
                    //       color: Color(0xFF474747),
                    //       fontSize: 19,
                    //       fontFamily: "Poppins",
                    //       fontWeight: FontWeight.w500,)),
                    //SizedBox(width: SizeConfig.screenWidth*0.49,), //editttttttt
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        //padding: EdgeInsets.only(left:10),
                        width: 20,
                        height: 20,
                        child: Image(
                          image: AssetImage("assets/images/logos_todomvc.png"),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.01,),

              Container(
                width: SizeConfig.screenWidth,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 8,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.06,),
                    Text("Eat less carbohydrate",
                        style: TextStyle(
                          color: Color(0xFF474747),
                          fontSize: 19,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,)),
                    SizedBox(width: SizeConfig.screenWidth*0.32,), //editttttttt
                    Container(
                      //padding: EdgeInsets.only(left:10),
                      width: 20,
                      height: 20,
                      child: Image(
                        image: AssetImage("assets/images/logos_todomvc.png"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],

      ),
    );
  }
}
