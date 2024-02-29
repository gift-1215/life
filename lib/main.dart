import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'landing_page.dart';
import 'message_page.dart';
import 'home_page.dart';
import 'notification_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: LandingPage(),
    );
  }
}