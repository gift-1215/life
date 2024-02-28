import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'message_page.dart';
import 'home_page.dart';
import 'notification_page.dart';

void main() => runApp(const LifeApp());

class LifeApp extends StatelessWidget {
  const LifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const LifeHome(),
    );
  }
}

class LifeHome extends StatefulWidget {
  const LifeHome({super.key});

  @override
  State<LifeHome> createState() => _LifeHomeState();
}

class _LifeHomeState extends State<LifeHome> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Messages',
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Life App'),
        backgroundColor: Colors.black12,
      ),
      body: <Widget>[
        const HomePage(),
        const NotificationPage(),
        const MessagePage(),
      ][currentPageIndex],
    );
  }
}
