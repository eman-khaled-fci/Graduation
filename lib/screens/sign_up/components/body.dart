import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: getProportionateScreenHeight(SizeConfig.screenHeight*0.4),
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(24)),
          child:  SingleChildScrollView(

            child: Column(
              children: [
               TopBar(text: "Create Your Profile ", press: (){},)
              ],
            ),
          ),

        ),
      ),
    );


  }
}



