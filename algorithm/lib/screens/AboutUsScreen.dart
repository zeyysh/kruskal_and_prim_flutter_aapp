import 'package:algorithm/screens/KAndP.dart';
import 'package:algorithm/screens/Menu.dart';
import 'package:algorithm/screens/TeachingKruskalScreen.dart';
import 'package:flutter/material.dart';

import 'Start.dart';


class AboutUsScreen extends StatefulWidget {
  static const String id = "AboutUsScreenId";
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  Image _image1 = Image.asset('assets/images/Back.png',fit: BoxFit.contain,);
  Image _image2 = Image.asset('assets/images/Ok.png',fit: BoxFit.contain,);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 1440.0,
          height: 2960.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/AboutUsScreen.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap:()=>  Navigator.of(context).pushReplacementNamed(Menu.id),
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
            ],
          ),
        ),

      ],
    );
  }
}
