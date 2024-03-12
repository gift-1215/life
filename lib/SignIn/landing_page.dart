import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life/components/my_drawer.dart';

import '../home_page.dart';
import '../components/getx_controller.dart';

class LandingPage extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  LandingPage({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(LandingPageController(), permanent: false);
    return SafeArea(
        child: Scaffold(
            drawer: const Drawer(
              child: MyDrawer(),
            ),
            body: HomePage()));
  }
}
