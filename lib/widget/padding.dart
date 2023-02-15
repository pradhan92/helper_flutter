/*
  Paddding

           EdgeInsetsGeometry
              /     \
      EdgeInsets   EdgeInsetsDirectional

      L -> R   Start - End
      R -> L   End  - Start
*/

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            // using EdgeInsets
            //---------------------------------------
            //   child: Card(
            //     color: Colors.lightBlue,
            //     child: Padding(
            //       padding: EdgeInsets.all(30),  // EdgeInsets.only(), EdgeInsets.symmetric(), EdgeInsets.fromLTRB()

            //       child: Text(
            //         'Flutter Teacher',
            //         style: TextStyle(fontSize: 30),
            //       ),
            //     ),
            //   ),

            //  Using EdgeInsetsDirectional
            //--------------------------------------
            // child: Directionality(
            //   textDirection: TextDirection.rtl,
            //   child: Card(
            //     color: Colors.lightBlue,
            //     child: Padding(
            //       padding: EdgeInsetsDirectional.only(start: 30, end: 20, bottom: 0, top: 50), EdgeInsetsDirectional.fromSTEB(), EdgeInsetsDirectional.all()
            //       child: Text(
            //         'Flutter Teacher',
            //         style: TextStyle(fontSize: 30),
            //       ),
            //     ),
            //   ),
            // ),
            ),
      ),
    );
  }
}
