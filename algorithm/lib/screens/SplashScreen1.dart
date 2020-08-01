import 'package:algorithm/screens/SplashScreen2.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreen1 extends StatefulWidget {
  static const String id = "SplashScreen1Id";

  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  Image _image = Image.asset('assets/images/SplashScreen1.jpg',fit: BoxFit.contain,);
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: SplashScreen2(),
      imageBackground: _image.image,
      loaderColor: Color.fromARGB(0, 0, 0, 0),
    );
  }
  }
