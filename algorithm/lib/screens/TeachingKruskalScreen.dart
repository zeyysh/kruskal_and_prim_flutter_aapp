import 'package:algorithm/screens/KAndP.dart';
import 'package:algorithm/screens/TeachingPrim.dart';
import 'package:flutter/material.dart';

import 'Start.dart';


class TeachingKruskalScreen extends StatefulWidget {
  static const String id = "TeachingKruskalScreenId";
  @override
  _TeachingKruskalScreenState createState() => _TeachingKruskalScreenState();
}

class _TeachingKruskalScreenState extends State<TeachingKruskalScreen> {
  Image _image1 = Image.asset('assets/images/Skip.png',fit: BoxFit.contain,);
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
              image: const AssetImage('assets/images/TeachingKruskal.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap:()=>  Navigator.of(context).pushReplacementNamed(KAndP.id),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: _image1.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    width: 100.0,
                    height: 50.0,
                  ),
                ),
                GestureDetector(
                  onTap:()=>  Navigator.of(context).pushReplacementNamed(TeachingPrimScreen.id),
                  child: Container(
                    margin: EdgeInsets.all(15),
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
        ),
      ],
    );
  }
}
