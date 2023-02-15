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
            decoration: const BoxDecoration(
              // container with LinearGradient
              // --------------------------
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.red,
                  Colors.green,
                  Colors.blue,
                ],
              ),

              // container with RadialGradient
              // shape: BoxShape.circle,

              // gradient: RadialGradient(
              //   colors: [
              //     Colors.red,
              //     Colors.green,
              //     Colors.blue,
              //   ],
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
