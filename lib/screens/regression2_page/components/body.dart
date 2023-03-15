import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/regression1_page/regression1_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../articles/article_screen.dart';
import '../../home_page/home_page_screen.dart';
import '../../plant1_page/plant1_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override

  void initState() {
    data = [
      _ChartData('2022', 25),
      _ChartData('2021', 20),
      _ChartData('2020', 17),
      _ChartData('2019', 13),
      _ChartData('2018', 10),
      _ChartData('2017', 7),
      _ChartData('2016', 6),
      _ChartData('2015', 5),
      _ChartData('2014', 4),

    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }
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

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.05,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
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
                      onPressed: (){Navigator.pushNamed(context, Regression1Screen.routeName);},
                      child: Image.asset("assets/icons/mdi_arrow-back.png"
                          ,height: SizeConfig.screenHeight*0.06),
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth*0.06,),
                  Container(
                      child: Text("Regression Statistics",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 24,
                          color: LightModeSmallTextColor
                      ),),),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight*0.07,),

              Row(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/images/analysis.png"),
                  ),
                  SizedBox(width: SizeConfig.screenWidth*0.02,),
                  Text("Yearly ",
                  style: TextStyle(
                    fontSize: 21,
                    fontFamily: "Poppins",
                    color: LightModeMainColor
                  ),),
                  Text("Emmissions:",
                    style: TextStyle(
                      fontSize: 21,
                      fontFamily: "Poppins",),),
                ],
              ),

              SizedBox(height: SizeConfig.screenHeight*0.03,),


              Container(
                height: 300,
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis: NumericAxis(minimum: 0, maximum: 30, interval: 10),
                    tooltipBehavior: _tooltip,
                    series: <ChartSeries<_ChartData, String>>[
                      ColumnSeries<_ChartData, String>(
                          dataSource: data,
                          xValueMapper: (_ChartData data, _) => data.x,
                          yValueMapper: (_ChartData data, _) => data.y,
                          name: 'state',

                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xFF85C59D),
                              Color(0xFF9EEABA),
                            ]
                        ),
                      )
                    ]
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.03,),


              Container(
                height: 300,
                child: Table(
                  children: [
                    buildRow(['Year','Emissions','Range'],isHeader: true),
                    buildRow(['2014','11608739 Kg','']),
                    buildRow(['2015','11543665 Kg','']),
                    buildRow(['2016','11874351 Kg','']),
                    buildRow(['2017','11374369 Kg','Lowest']),
                    buildRow(['2018','11874365 Kg','']),
                    buildRow(['2019','11878756 Kg','']),
                    buildRow(['2020','12534768 Kg','Highest']),
                    buildRow(['2021','11874295 Kg','']),
                    buildRow(['2022','11811163 Kg','']),
                  ],
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.2,)
            ],
          ),
        ),
      ),
    );
  }
  TableRow buildRow(List<String> cells, {bool isHeader=false}) => TableRow(
      children: cells.map((cell){
        final style = TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: isHeader? 16 : 14,
          color: isHeader ? LightModeSmallTextColor : LightModeMainColor,);
        return Padding(
            padding: EdgeInsets.all(8),
          child: Center(
            child: Text(cell,style:style ,),
          ),
        );
      }).toList()
  );
}


class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}