

// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:swipeable_button_view/swipeable_button_view.dart';

// class SwipeableButtonPage extends StatefulWidget {
//   const SwipeableButtonPage({Key? key}) : super(key: key);

//   @override
//   State<SwipeableButtonPage> createState() => _SwipeableButtonPageState();
// }

// class _SwipeableButtonPageState extends State<SwipeableButtonPage> {
//    bool isFinished = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           Image.asset(
//             "asset/home_image.jpg",
//             fit: BoxFit.cover,
//             height: double.infinity,
//             width: double.infinity,
//           ),
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
//               child: SwipeableButtonView(
//                   buttonText: "SLIDE TO UNLOCK",
//                   buttonWidget: Container(
//                     child: Icon(
//                       Icons.arrow_forward_ios_rounded,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   activeColor: Color(0xff3398F6),
//                   isFinished: isFinished,
//                   onWaitingProcess: () {
//                     Future.delayed(Duration(seconds: 2), () {
//                       setState(() {
//                         isFinished = true;
//                       });
//                     });
//                   },
//                   onFinish: () async {
//                     await Navigator.push(
//                         context,
//                         PageTransition(
//                             type: PageTransitionType.fade,
//                             // next page when swipe
//                             child: const DashboardScreen()));
//                              setState(() {
//                       isFinished = false;
//                     });
//                   }))
        
//         ],
//       ),
//     );
//   }
// }