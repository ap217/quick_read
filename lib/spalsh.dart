import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
          ),
          FadeInImage(
            placeholder: AssetImage("assets/img/QuickReadSqrCrop.png"),
            image: AssetImage("assets/img/QuickReadSqrCrop.png"),
            height: 300,
            width: 300,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Developed By  ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Aditya Patel',
                    style: GoogleFonts.dancingScript(
                      textStyle: TextStyle(
                          color: Color(0xff32594A),
                          // letterSpacing: .5,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
