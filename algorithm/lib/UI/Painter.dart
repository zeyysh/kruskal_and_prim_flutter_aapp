import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LineAndCirclePainter extends CustomPainter { //         <-- CustomPainter class
  Offset offsetA;
  Offset offsetB;
  Paint paint1;
  var listOffset = List();

  LineAndCirclePainter(List list){
    this.listOffset = list;
    paint1 = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;
    print(listOffset);
  }
  
  ui.Paragraph ParagraphDraw(String str){
    final textStyle = ui.TextStyle(
      color: Colors.red,
      fontSize: 25,
    );
    final paragraphStyle = ui.ParagraphStyle(
      textDirection: TextDirection.ltr,
    );
    final paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
      ..pushStyle(textStyle)
      ..addText(str);
    final constraints = ui.ParagraphConstraints(width: 10);
    final paragraph = paragraphBuilder.build();
    paragraph.layout(constraints);
    return paragraph;
  }
  
  @override
  void paint(Canvas canvas, Size size) {
    final a = Offset(100, 0);
    final b = Offset(170, 30);
    final c = Offset(200, 100);
    final d = Offset(170, 170);
    final e = Offset(100, 200);
    final f = Offset(30, 170);
    final g = Offset(0, 100);
    final h = Offset(30, 30);
    
    canvas.drawParagraph(ParagraphDraw('a'), Offset(93, -40));
    canvas.drawParagraph(ParagraphDraw('b'), Offset(163 ,-10));
    canvas.drawParagraph(ParagraphDraw('c'), Offset(193 ,60));
    canvas.drawParagraph(ParagraphDraw('d'), Offset(163 ,130));
    canvas.drawParagraph(ParagraphDraw('e'), Offset(93 ,160));
    canvas.drawParagraph(ParagraphDraw('f'), Offset(23 ,130));
    canvas.drawParagraph(ParagraphDraw('g'), Offset(-7 ,60));
    canvas.drawParagraph(ParagraphDraw('h'), Offset(23 ,-10));



//    canvas.drawCircle(b, 10, paint1);
//    canvas.drawCircle(c, 10, paint1);
//    canvas.drawCircle(d, 10, paint1);
//    canvas.drawCircle(e, 10, paint1);
//    canvas.drawCircle(f, 10, paint1);
//    canvas.drawCircle(g, 10, paint1);
//    canvas.drawCircle(h, 10, paint1);
    //canvas.drawLine(a, e, paint1);
    for(int i =0 ; i<listOffset.length; i+=2) {
      canvas.drawCircle(listOffset[i], 11, paint1);
      canvas.drawCircle(listOffset[i+1], 11, paint1);
      canvas.drawLine(listOffset[i], listOffset[i+1], paint1);
    }
  }
  @override
  bool shouldRepaint(LineAndCirclePainter oldDelegate) {
    return false;
  }
}