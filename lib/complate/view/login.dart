
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helper/complate/service/remote_service.dart';
import 'package:helper/complate/view/forgotpassword.dart';
import 'package:helper/complate/view/register.dart';
import 'package:helper/complate/widget/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();

  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Form(
              key: key,
              child: Column(
                children: [
                  Image.asset(
                    "images/logo4.jpeg",
                    width: Get.size.width * 0.80,
                  ),
                  Gap(),
                  TextFormField(
                    controller: username,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    //validator:
                  ),
                  Gap(),
                  //
                  TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          showPassword = !showPassword;
                          setState(() {});
                          print(showPassword);
                        },
                        icon: showPassword == true
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility_outlined),
                      ),
                    ),
                    obscureText: showPassword,
                  ),
                  Gap(),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          color: Colors.green,
                          textColor: Colors.white,
                          onPressed: () {
                            Map data = {
                              'username': username.text,
                              'password': password.text,
                            };
                            RemoteService.login(data);
                            //Get.to(() => HomePage());
                          },
                          child: Text("LOGIN"),
                        ),
                      ),
                    ],
                  ),
                  Gap(),
                  InkWell(
                      onTap: () {
                        Get.to(() => RegisterPage());
                      },
                      child: Text("Are You New ? Resister here")),
                  Gap(),
                  InkWell(
                      onTap: () {
                        Get.to(() => ForgotPasswordPage());
                      },
                      child: Text("Forgot Password")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
