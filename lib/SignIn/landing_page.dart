import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../message_page.dart';
import '../home_page.dart';
import '../notification_page.dart';
import '../components/getx_controller.dart';

class LandingPage extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: const TextScaler.linear(1.0)),
        child: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: const Icon(
                    Icons.home,
                    size: 25.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: const Icon(
                    Icons.message,
                    size: 25.0,
                  ),
                ),
                label: 'Message',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: const Icon(
                    Icons.notifications_on,
                    size: 25.0,
                  ),
                ),
                label: 'Notification',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
            ],
          ),
        )));
  }

  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      appBar: AppBar(
        title: const Text(
          'airyzone Life',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: signUserOut, icon: Icon(Icons.logout,color: Colors.white,)),
        ],
        backgroundColor: const Color.fromARGB(255, 32, 13, 58),
      ),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              HomePage(),
              MessagePage(),
              NotificationPage(),
            ],
          )),
    ));
  }
}
