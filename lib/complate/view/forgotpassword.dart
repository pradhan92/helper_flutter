
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helper/complate/view/login.dart';
import 'package:helper/complate/view/save.dart';
import 'package:helper/complate/widget/gap.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password Page"),
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
            Gap(),
            TextFormField(
              decoration: InputDecoration(
                labelText: "New Password",
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
                      Get.to(() => SaveView());
                    },
                    child: Text("SAVE"),
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
