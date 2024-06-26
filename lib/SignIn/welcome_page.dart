import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/services/dynamic_link_services.dart';
import "auth_page.dart";

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Image.asset('assets/airyzone.png',
                height: MediaQuery.of(context).size.height * 0.1,
                fit: BoxFit.cover),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const Text(
              "歡迎使用",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              "Airyzone Life",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            TextButton(
                onPressed: () {
                  createDynamicLink();
                  Get.off(const AuthPage());
                },
                child: const Text(
                  "確認",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }

  void createDynamicLink() async {
    DynamicLinkServices.instance.createDynamicLink();
  }
}
