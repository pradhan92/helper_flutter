
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helper/complate/binding/controller_binding.dart';
import 'package:helper/complate/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '90sShop',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialBinding: ControllerBinding(),
      home: const SplashScreen(),
    );
  }
}
