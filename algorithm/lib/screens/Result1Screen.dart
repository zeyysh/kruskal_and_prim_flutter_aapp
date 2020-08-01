
import 'package:algorithm/screens/Result2Screen.dart';
import 'package:algorithm/screens/ResultScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Result1Screen extends StatefulWidget {
  static const String id = "Result1ScreenId";
  @override
  _Result1ScreenState createState() => _Result1ScreenState();
}

class _Result1ScreenState extends State<Result1Screen> {
  Image _image1 = Image.asset('assets/images/Back.png',fit: BoxFit.contain,);
  Image _image2 = Image.asset('assets/images/Next.png',fit: BoxFit.contain,);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 1440.0,
          height: 2960.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/Result1Screen.png'),
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
                onTap:()=>  Navigator.of(context).pushReplacementNamed(ResultScreen.id),
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
                onTap:()=>  Navigator.of(context).pushReplacementNamed(Result2Screen.id),
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
