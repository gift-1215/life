import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:get/get.dart';
import 'package:life/resources/firebase_options.dart';
import 'package:life/store_page.dart';
import 'package:life/test_figma_page.dart';

import 'SignIn/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LineSDK.instance.setup('2004282602').then((_) {
    debugPrint('LineSDK Prepared');
  });

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      //home: const WelcomePage(),
      home: StorePage(),
    );
  }
}
