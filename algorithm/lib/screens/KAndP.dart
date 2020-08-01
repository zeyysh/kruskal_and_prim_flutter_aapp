import 'package:algorithm/UI/Painter.dart';
import 'package:algorithm/screens/ResultScreen.dart';
import 'package:algorithm/screens/TeachingKruskalScreen.dart';
import 'package:flutter/material.dart';

import 'Start.dart';

class KAndP extends StatefulWidget {
  static const String id = "KAndPId";

  @override
  KAndPState createState() => KAndPState();
}

class KAndPState extends State<KAndP> {
  final vertex1Controller = TextEditingController();
  final vertex2Controller = TextEditingController();
  final weightController = TextEditingController();

  Image _image1 = Image.asset(
    'assets/images/Back.png',
    fit: BoxFit.contain,
  );
  Image _image2 = Image.asset(
    'assets/images/Done.png',
    fit: BoxFit.contain,
  );

  static var list = List();
  var list2 = List();

  static getList(){
    return list;
  }

  int i = 0;

  Map<String, Offset> map = {
    'a': Offset(100, 0),
    'b': Offset(170, 30),
    'c': Offset(200, 100),
    'd': Offset(170, 170),
    'e': Offset(100, 200),
    'f': Offset(30, 170),
    'g': Offset(0, 100),
    'h': Offset(30, 30)
  };

  Offset offsetA;
  Offset offsetB;

  Map<String, int> mapNum = {
    'a': 0,
    'b': 1,
    'c': 2,
    'd': 3,
    'e': 4,
    'f': 5,
    'g': 6,
    'h': 7,
  };

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            width: 1440.0,
            height: 2960.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/Background.png'),
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
                  onTap: () => Navigator.of(context)
                      .pushReplacementNamed(TeachingKruskalScreen.id),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30),
//                  height: 230,
//                  width: 230,
                  child: FittedBox(
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: CustomPaint(
                        foregroundPainter:
                            LineAndCirclePainter(list2),
                        size: Size(200, 200),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: FittedBox(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 330.0,
                      height: 220.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: [
                            const Color(0xa1ffffff),
                            const Color(0xa1f5f5f5),
                            const Color(0xa1b7b7b7)
                          ],
                          stops: [0.0, 0.82, 1.0],
                        ),
                        border:
                            Border.all(width: 3.0, color: const Color(0xffe393d7)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 12.0, left: 12.0, right: 12.0),
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'to create each edge:(please enter vertexes in order of alphabet)',
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'vertex 1:',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Container(
                                        width: 200.0,
                                        height: 30.0,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(51.0),
                                          color: const Color(0x73ffffff),
                                          border: Border.all(
                                              width: 2.0,
                                              color: const Color(0xff8dc0ea)),
                                        ),
                                        child: TextField(
                                          controller: vertex1Controller,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            hintText: 'enter name',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'vertex 2:',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Container(
                                        width: 200.0,
                                        height: 30.0,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(51.0),
                                          color: const Color(0x73ffffff),
                                          border: Border.all(
                                              width: 2.0,
                                              color: const Color(0xff8dc0ea)),
                                        ),
                                        child: TextField(
                                          controller: vertex2Controller,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            hintText: 'enter name',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'weight:',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        width: 200.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(51.0),
                                          color: const Color(0x73ffffff),
                                          border: Border.all(
                                              width: 2.0,
                                              color: const Color(0xff8dc0ea)),
                                        ),
                                        child: Center(
                                          child: TextField(
                                            controller: weightController,
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                              hintText: 'enter weight',
                                              border: InputBorder.none,
                                            ),

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: Container(
                                          width: 160.0,
                                          height: 30.0,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: const Color(0xffffffff),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0xff1b1464)),
                                          ),
                                          child: Text(
                                            'Next Edge',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                        onTap: () {
                                          offsetA = map[vertex1Controller.text];
                                          offsetB = map[vertex2Controller.text];
                                          list2.add(offsetA);
                                          list2.add(offsetB);
                                          list.add([mapNum[vertex1Controller.text],mapNum[vertex2Controller.text],int.parse(weightController.text)]);
                                          print(list);
                                          vertex2Controller.clear();
                                          vertex1Controller.clear();
                                          weightController.clear();
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ResultScreen(),
                        settings: RouteSettings(
                          arguments: list,
                        ),
                      )
                      );
                    },
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
      ),
    );
  }
}

