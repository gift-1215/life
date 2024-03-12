import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/SignIn/auth_page.dart';
import 'package:life/SignIn/landing_page.dart';
import 'package:life/components/my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class StorePage extends StatelessWidget {
   StorePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  static Future<void> _launchURL(String url) async {
  
  try {
    await launchUrl(Uri.parse(url));
    debugPrint("+========================================================+");
    debugPrint('url launched successfully');
    debugPrint("+========================================================+");
  } catch (e) {
    debugPrint("+========================================================+");
    throw 'Could not launch $e';
  }
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'AiryWalker',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 91, 115, 98),
        ),
        drawer: const Drawer(child: MyDrawer()),
        body: Container(
          color: Colors.black87,
          child: Center(
            child: Column(
              children: [
                const Expanded(flex: 4, child: SizedBox()),
                const Expanded(
                    flex: 1,
                    child: Center(
                        child: Text(
                      '確定登出？',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                Expanded(
                    flex: 1,
                    child: Center(
                        child: TextButton(
                            onPressed: () {
                              Get.off(LandingPage());
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.lightBlue)),
                            child: const Text(
                              '返回',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            )))),
                Expanded(
                    flex: 1,
                    child: Center(
                        child: TextButton(
                            onPressed:(){ _launchURL('https://tendencyexpress.com/'); },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.lightGreen)),
                            child: const Text(
                              '網站',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            )))),
                const Expanded(flex: 4, child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
