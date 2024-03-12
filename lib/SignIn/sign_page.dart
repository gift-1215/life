import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:life/SignIn/auth_page.dart';
import 'package:life/components/square_tile.dart';
import 'package:life/services/auth_services.dart';
import '../components/text_field.dart';
import '../components/my_button.dart';
import 'package:get/get.dart';
import 'register_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Get.off(AuthPage());
    } on FirebaseAuthException catch (e) {
      debugPrint("error");
      showErrorMessage();
    }
  }

  void showErrorMessage() {
    Get.dialog(Dialog(
      backgroundColor: Colors.black,
      child: SizedBox(
          height: MediaQuery.of(context).size.width * 0.2,
          child: const Center(
              child: Text(
            'Invalid Email or Password',
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
                  "Welcome back to Airyzone Life",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                MyTextField(
                    controller: emailController,
                    hintText: "帳號",
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
                MyButton(
                  onTap: signUserIn,
                  text: '登入',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                TextButton(
                    onPressed: () {
                      Get.off(const RegisterPage());
                    },
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: const Text(
                      '沒有帳號？ 註冊',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 225, 221, 240)),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    )),
                    Text(
                      ' 以其他方式登入 ',
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
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                      imagePath: 'assets/google.png',
                      onTap: () => AuthService().signWighGoogle(),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    SquareTile(
                      imagePath: 'assets/apple.jpg',
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
