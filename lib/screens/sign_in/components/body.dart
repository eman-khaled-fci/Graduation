import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SizedBox(

      child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
           child: Text("Sign In Screen"),
          ),

        ),
      ),

    ));
  }
}
