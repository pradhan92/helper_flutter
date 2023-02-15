import 'package:flutter/gestures.dart';
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

            // Balance 9,12,735
            // ------------------------------------
            /*
          child: RichText(
            text: TextSpan(
              text: 'Balance\n',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
              children: [
                TextSpan(
                  text: '9,12,735',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          */

            // Don\'t have an account? Register
            //--------------------------------------------
            /*
          child: RichText(
            text: TextSpan(
              text: 'Don\'t have an account? ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
              children: [
                TextSpan(
                  text: 'Register',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.orange,
                  ),

                  //
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('You tapped');
                    },
                ),
              ],
            ),
          ),
          */

            // Please subscribe Bell Icon
            //-----------------------------------------------------
            /*
          child: RichText(
            text: TextSpan(
              text: 'Please subscribe ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.notifications_active_outlined,
                    size: 30,
                    color: Colors.blue,
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
              ],
            ),
          ),
          */
            ),
      ),
    );
  }
}
