import 'dart:io';

import 'package:algorithm/screens/KAndP.dart';
import 'package:algorithm/screens/Menu.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Result2Screen extends StatefulWidget {
  static const String id = "Result2ScreenId";
  @override
  _Result2ScreenState createState() => _Result2ScreenState();
}

class _Result2ScreenState extends State<Result2Screen> {
  Image _image1 = Image.asset('assets/images/Back.png',fit: BoxFit.contain,);
  Image _image2 = Image.asset('assets/images/Done.png',fit: BoxFit.contain,);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 1440.0,
          height: 2960.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/Result2Screen.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap:()=>  Navigator.of(context).pushReplacementNamed(KAndP.id),
                child: Container(
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: _image1.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              GestureDetector(
                onTap:()=> exit(0),
                child: Container(
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: _image2.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  width: 100.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
