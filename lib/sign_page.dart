import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:life/landing_page.dart';
import 'firebase_options.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'components/text_field.dart';
import 'components/my_button.dart';
import 'landing_page.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {
    Get.off(LandingPage());
  }

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.2,
              ),
              const Icon(
                Icons.lock,
                color: Colors.white,
                size: 100,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              const Text(
                "Welcome back to Airyzone Life",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              MyTextField(
                  controller: usernameController,
                  hintText: "Email",
                  obscureText: false),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              MyButton(onTap: signUserIn),
            ],
          ),
        ),
      ),
    );
  }
}
