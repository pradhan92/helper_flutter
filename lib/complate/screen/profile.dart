import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: Drawer(),
        appBar: AppBar(
          //leading:Icon(Icons.add_a_photo),
          title: Text("Profile"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.people)),
          ],
        ),
        body: Center(
          child: Text("ProfileScreen"),
        ));
  }
}
