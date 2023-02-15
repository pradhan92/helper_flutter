import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //color, width, height, child, padding, margin, alignment
        //------------------------------------
        body: Center(
          child: Container(
            color: Colors.green,
            width: 300,
            height: 300,
            padding: EdgeInsets.all(32),
            margin: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            alignment: Alignment.center,
            child: Text(
              'Flutter Teacher',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),

        // constraints
        //------------------------------------------------------
        // body: Center(
        //   child: Container(
        //     color: Colors.green,
        //     constraints: BoxConstraints(
        //       minHeight: 100,
        //       minWidth: 200,
        //       maxHeight: 300,
        //       maxWidth: 300,
        //     ),
        //     child: Text(
        //       'Flutter Teacher is the Youtube channel',
        //       style: TextStyle(fontSize: 30),
        //     ),
        //   ),
        // ),

        // transform (rotation)
        //------------------------------------------
        // body: Center(
        //   child: Container(
        //     color: Colors.green,
        //     width: 300,
        //     height: 300,

        //     //  for anti-clock wise use Matrix4.rotationZ(-(math.pi / 180) * 20),
        //     transform: Matrix4.rotationZ((math.pi / 180) * 20),
        //     //
        //     child: Text(
        //       'Flutter Teacher',
        //       style: TextStyle(fontSize: 30),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
