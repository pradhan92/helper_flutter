import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: Drawer(),
        appBar: AppBar(
          //leading:Icon(Icons.add_a_photo),
          title: Text("Card"),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
          ],
        ),
        body: Center(
          child: Text("CardScreen"),
        ));
  }
}
