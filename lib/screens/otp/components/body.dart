import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(

        child: Column(
        children: [
          TopBar(text:"",press: (){},),
          Text(""),
          // كملي هنا بقا



  ],
),
          ),

        ),
      ),
    );
  }
}
