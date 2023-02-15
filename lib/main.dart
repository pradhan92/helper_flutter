import 'package:flutter/material.dart';
import 'package:helper/screen/widget_screen/image_stack.dart';

import 'screen/widget_screen/image_picker.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Helper for development',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home:HomeScreen(),
      //home:ListViewScreen() ,
      //home: CustomSigninButton(),
     home: ImageStack(),

    );
  }
}

