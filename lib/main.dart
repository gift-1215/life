import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:get/get.dart';
import 'package:life/resources/firebase_options.dart';
import 'SignIn/welcome_page.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  LineSDK.instance.setup('2004282602').then((_) {
    debugPrint('LineSDK Prepared');
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const WelcomePage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    /*
    return MaterialApp.router(
      theme: ThemeData(useMaterial3: true),
      title: "Airyzone Life",
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
      //home: const WelcomePage(),
      //home: Testing(),
    );*/

    return GetMaterialApp(
      //home: WelcomePage(),
      title: 'Airyzone Life',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const WelcomePage(),
      },
    );
  }
}
