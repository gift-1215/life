import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "auth_page.dart";

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Icon(
              Icons.air,
              size: 100,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Icon(Icons.curtains),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              "歡迎使用",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              "Airyzone Life",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            TextButton(
                onPressed: () {
                  Get.off(AuthPage());
                },
                child: Text("確認",style: TextStyle(fontSize: 20),)),
          ],
        ),
      ),
    );
  }
}