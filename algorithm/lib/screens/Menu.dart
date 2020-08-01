import 'dart:io';

import 'package:algorithm/screens/AboutUsScreen.dart';
import 'package:algorithm/screens/ResultScreen.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Start.dart';

class Menu extends StatefulWidget {
  static const String id = "Menu1Id";

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Image _image1 = Image.asset('assets/images/Start.png',fit: BoxFit.contain,);
  Image _image2 = Image.asset('assets/images/AboutUs.png',fit: BoxFit.contain,);
  Image _image3 = Image.asset('assets/images/Exit.png',fit: BoxFit.contain,);

  Image _image4 = Image.asset(
    'assets/images/popUp.png',
    fit: BoxFit.contain,
  );
  Image _image5 = Image.asset(
    'assets/images/SadYes.png',
    fit: BoxFit.contain,
  );  Image _image6 = Image.asset(
    'assets/images/Happy No.png',
    fit: BoxFit.contain,
  );

  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 1440.0,
          height: 2960.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/MenuScreen.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap:(){
                    Navigator.of(context).pushReplacementNamed(Start.id);
                    audioCache.play('Next.mp3');
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: _image1.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    width: 260.0,
                    height: 80.0,
                  ),
                ),
                GestureDetector(
                  onTap:()=>  Navigator.of(context).pushReplacementNamed(AboutUsScreen.id),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: _image2.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    width: 260.0,
                    height: 80.0,
                  ),
                ),GestureDetector(
                  onTap:(){
                    showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: Container(
                          width: 350,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: _image4.image,
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap:()=>  exit(0),
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: _image5.image,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      width: 120.0,
                                      height: 60.0,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap:()=>  Navigator.pop(context),
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: _image6.image,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      width: 120.0,
                                      height: 60.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      );
                    }
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: _image3.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    width: 260.0,
                    height: 80.0,
                  ),
                ),
              ],
            ),
        ),

      ],
    );
  }
}
