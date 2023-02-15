// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tecretail/view/auth/login.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   void initState() {
//     super.initState();
//     _navigatetologin();
//   }

//   _navigatetologin() async {
//     await Future.delayed(const Duration(milliseconds: 1500), () {});
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(
//           builder: ((context) => 
//           LoginView()
//           )
//         ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.asset(
//                 "images/logo.png",
//                 width: Get.size.width * 0.80,
//               ),
//             ]),
//       ),
//     );
//   }
// }
