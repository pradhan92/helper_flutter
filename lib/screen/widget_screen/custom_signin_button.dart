

import 'package:custom_signin_buttons/button_builder.dart';
import 'package:custom_signin_buttons/button_data.dart';
import 'package:custom_signin_buttons/button_list.dart';
import 'package:flutter/material.dart';

class CustomSigninButton extends StatefulWidget {
  const CustomSigninButton({Key? key}) : super(key: key);

  @override
  State<CustomSigninButton> createState() => _CustomSigninButtonState();
}

class _CustomSigninButtonState extends State<CustomSigninButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Sign In Button Example"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SignInButton(
                button: Button.Facebook,
                width: 300,
                borderRadius: 30,
                textSize: 18,
                iconSize: 30,
                spanish: true,
                text: "Se connecter avec Facebook",
                onPressed: () {},
                splashColor: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              SignInButton(
                button: Button.Pinterest,
                width: 300,
                borderRadius: 30,
                textSize: 20,
                iconSize: 30,
                onPressed: () {},
                splashColor: Colors.red,
                showText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              SignInButton(
                button: Button.Twitter,
                small: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomSignInButton(
                text: "Sign in with Email",
                customIcon: Icons.email,
                width: 300,
                buttonColor: Colors.blue,
                textColor: Colors.white,
                iconColor: Colors.white,
                useGradient: true,
                setGradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
