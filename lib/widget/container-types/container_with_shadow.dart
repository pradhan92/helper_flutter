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
              color: Colors.orange,
              // container with shadow
              // --------------------------
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(10, 20),
                  blurRadius: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
