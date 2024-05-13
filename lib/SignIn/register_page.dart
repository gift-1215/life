import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:life/SignIn/auth_page.dart';
import 'package:life/components/square_tile.dart';
import 'package:life/services/auth_services.dart';
import '../components/text_field.dart';
import '../components/my_button.dart';
import 'package:get/get.dart';
import 'sign_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void signUserUp() async {
    try {
      if (passwordController.text == confirmpasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
        Get.off(const AuthPage());
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
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ))),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 235, 245),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Image.asset('assets/life.png',
                    height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover),
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
                      Get.off(const SignInPage());
                    },
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: const Text(
                      '已經有帳號？ 登入',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    )),
                    Text(
                      ' 以其他方式註冊 ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    )),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                      imagePath: 'assets/google.png',
                      onTap: () => AuthService().signWithGoogle(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    SquareTile(
                      imagePath: 'assets/apple.jpg',
                      onTap: () {},
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    SquareTile(
                      imagePath: 'assets/line.png',
                      onTap: () => AuthService().signWithLine(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
