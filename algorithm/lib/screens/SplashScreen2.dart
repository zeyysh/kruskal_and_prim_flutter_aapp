import 'package:algorithm/screens/Menu.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreen2 extends StatefulWidget {
  static const String id = "SplashScreen2Id";

  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  Image _image = Image.asset('assets/images/SplashScreen2.jpg',fit: BoxFit.contain,);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: Menu(),
      imageBackground: _image.image,
      loaderColor: Color.fromARGB(0, 0, 0, 0),
    );
  }
}
