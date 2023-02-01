import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key, required this.image, required this.title, required this.description, required this.NumOfScreen, required this.onNextPressed, required this.CurrentScreen}) : super(key: key);

  final Image image;
  final String title;
  final String description;
  final int NumOfScreen;
  final Function(int) onNextPressed;
  final int CurrentScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image,
        //const SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(fontSize: 30,color: Colors.white ),
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: TextStyle(fontSize: 18,color: Colors.white ),

        ),

      ],
    );
  }
}
