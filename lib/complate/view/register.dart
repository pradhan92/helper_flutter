
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helper/complate/view/home.dart';
import 'package:helper/complate/view/login.dart';
import 'package:helper/complate/widget/gap.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Last Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            Gap(),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Middle Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            Gap(),
            TextFormField(
              decoration: InputDecoration(
                labelText: "First Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            Gap(),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Phone Number",
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
            Gap(),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            Gap(),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.confirmation_num),
                border: OutlineInputBorder(),
              ),
            ),
            Gap(),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Confirm Password",
                prefixIcon: Icon(Icons.confirmation_num),
                border: OutlineInputBorder(),
              ),
            ),
            Gap(),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      Get.to(() => HomePage());
                    },
                    child: Text("REGISTRATION"),
                  ),
                ),
              ],
            ),
            Gap(),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      Get.to(() => LoginView());
                    },
                    child: Text("CANCEL"),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
