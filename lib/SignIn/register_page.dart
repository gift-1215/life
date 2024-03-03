import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import '../firebase_options.dart';
import '../components/text_field.dart';
import '../components/my_button.dart';
import 'package:get/get.dart';
import 'sign_page.dart';
import 'landing_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void signUserUp() async {
    try {
      if (passwordController.text == confirmpasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
            Get.off(LandingPage());
      } else {
        showErrorMessage('密碼與再次確認的不符');
      }
    } on FirebaseAuthException catch (e) {
      showErrorMessage('error from firebase');
    }
  }

  void showErrorMessage(String text) {
    Get.dialog(Dialog(
      backgroundColor: Colors.black,
      child: SizedBox(
          height: MediaQuery.of(context).size.width * 0.2,
          child: Center(
              child: Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ))),
    ));
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
                  "Let's create an Airyzone Life account",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                MyTextField(
                    controller: emailController,
                    hintText: "請輸入帳號",
                    obscureText: false),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                MyTextField(
                    controller: passwordController,
                    hintText: "密碼",
                    obscureText: true),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                MyTextField(
                    controller: confirmpasswordController,
                    hintText: "再次輸入密碼",
                    obscureText: true),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                MyButton(onTap: signUserUp, text: '註冊'),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                TextButton(
                    onPressed: () {
                      Get.off(SignInPage());
                    },
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: const Text(
                      '已經有帳號？ 登入',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 225, 221, 240)),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
