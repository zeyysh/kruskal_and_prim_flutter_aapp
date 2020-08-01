
import 'package:algorithm/screens/AboutUsScreen.dart';
import 'package:algorithm/screens/KAndP.dart';
import 'package:algorithm/screens/Menu.dart';
import 'package:algorithm/screens/Result1Screen.dart';
import 'package:algorithm/screens/Result2Screen.dart';
import 'package:algorithm/screens/ResultScreen.dart';
import 'package:algorithm/screens/SplashScreen1.dart';
import 'package:algorithm/screens/SplashScreen2.dart';
import 'package:algorithm/screens/Start.dart';
import 'package:algorithm/screens/TeachingKruskalScreen.dart';
import 'package:algorithm/screens/TeachingPrim.dart';
import 'package:flutter/material.dart';

void main() {
  List list = List();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: SplashScreen1.id,
    routes: {
      SplashScreen1.id: (context) => SplashScreen1(),
      SplashScreen2.id: (context) => SplashScreen2(),
      Menu.id: (context) => Menu(),
      Start.id: (context) => Start(),
      AboutUsScreen.id: (context) => AboutUsScreen(),
      ResultScreen.id: (context) => ResultScreen(),
      TeachingKruskalScreen.id: (context) => TeachingKruskalScreen(),
      TeachingPrimScreen.id: (context) => TeachingPrimScreen(),
      KAndP.id: (context) => KAndP(),
      Result1Screen.id: (context) => Result1Screen(),
      Result2Screen.id: (context) => Result2Screen(),
    },
  )

  );
}

