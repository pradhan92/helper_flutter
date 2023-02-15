
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helper/complate/view/home.dart';
import 'package:helper/complate/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // void initState() {
  //   super.initState();
  //   _navigatetologin();
  // }

  // _navigatetologin() async {
  //   await Future.delayed(Duration(milliseconds: 1500), () {});
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: ((context) => HomePage())));
  // }

  checkAuth() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Future.delayed(
      Duration(seconds: 3),
      () {
        var token = preferences.getString('token');
        if (token != null) {
          Get.off(() => HomePage());
        } else {
          Get.off(() => LoginView());
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/logo4.jpeg",
                width: Get.size.width * 0.80,
              ),
            ]),
      ),
    );
  }
}
