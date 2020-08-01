import 'package:algorithm/UI/Painter.dart';
import 'package:algorithm/screens/KAndP.dart';
import 'package:algorithm/screens/Result1Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:algorithm/Logic/Kruskal.dart';
import 'package:algorithm/Logic/Prim.dart';



class ResultScreen extends StatefulWidget {
  static const String id = "ResultScreenId";
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  Image _image1 = Image.asset('assets/images/Back.png',fit: BoxFit.contain,);
  Image _image2 = Image.asset('assets/images/Next.png',fit: BoxFit.contain,);

  Map<int, Offset> map = {
    0: Offset(100, 0),
    1: Offset(170, 30),
    2: Offset(200, 100),
    3: Offset(170, 170),
    4: Offset(100, 200),
    5: Offset(30, 170),
    6: Offset(0, 100),
    7: Offset(30, 30)
  };

  @override
  Widget build(BuildContext context) {
    final List list1 = ModalRoute.of(context).settings.arguments;
    Kruskal kruskal = Kruskal(list1);
    List list2 = List();
    kruskal.main();
    list2 = kruskal.getList();
    List list = List();
    for(int j = 0 ; j < list2.length ; j++){
      list.add(map[list2[j][0]]);
      list.add(map[list2[j][1]]);
    }
    print('kruskal');
    Prim prim = Prim(list1);
    List primList = List();
    prim.main();
    primList = prim.getList();
    List PrimOffset = List();
    for(int j = 0 ; j < primList.length ; j++){
      PrimOffset.add(map[primList[j][0]]);
      PrimOffset.add(map[primList[j][1]]);
    }
    return Stack(
      children: <Widget>[
        Container(
          width: 1440.0,
          height: 2960.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/ResultScreen.png'),
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
                onTap:(){
                  Navigator.of(context).pushReplacementNamed(Result1Screen.id);
                  print(list);
                },
                child: Container(
                  margin: EdgeInsets.only(top:30,bottom: 30, left: 280),
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
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 0,bottom: 0,top: 130),
                padding: EdgeInsets.all(15),
                child: FittedBox(
                  child: SizedBox(
                    width: 190,
                    height: 190,
                    child: CustomPaint(
                      foregroundPainter:
                      LineAndCirclePainter(list),
                      size: Size(200, 200),
                    ),
                  ),
                ),
              ),Container(
                margin: EdgeInsets.only(left: 0,bottom: 0,top: 20),
                padding: EdgeInsets.all(15),
                child: FittedBox(
                  child: SizedBox(
                    width: 190,
                    height: 190,
                    child: CustomPaint(
                      foregroundPainter:
                      LineAndCirclePainter(PrimOffset),
                      size: Size(200, 200),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
