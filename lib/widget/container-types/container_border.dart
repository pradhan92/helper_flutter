import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.orange,

              // all side border
              //-------------------------------
              border: Border.all(color: Colors.black, width: 10),

              // single side border
              //----------------------------
              // border: Border(
              //   bottom: BorderSide(color: Colors.green, width: 10),
              // ),

              // symetric border
              //---------------------------
              // border: Border.symmetric(
              //   horizontal: BorderSide(color: Colors.green, width: 10),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
