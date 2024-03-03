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

var sign_in_var = 0;

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async{
    sign_in_var = 0;
    try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text,
      );} on FirebaseAuthException catch (e){
        print("error");
        sign_in_var = -1;
      }
    if(sign_in_var == 0)sign_in_var = 1;
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
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
                    controller: emailController,
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
      ),
    );
  }
}
