import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life/components/my_drawer.dart';
import 'dart:math';

import 'package:life/home_page.dart';
import 'package:life/notification_page.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(157, 233, 191, 1),
                Color.fromARGB(210, 243, 242, 245)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        SafeArea(
          child: Container(
            width: 200,
            padding: const EdgeInsets.all(8.0),
            child: const Column(
              children: [
                
                Expanded(child: MyDrawer()),
              ],
            ),
          ),
        ),
        TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: value),
            duration: const Duration(milliseconds: 400),
            builder: (_, double val, __) {
              return (Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.0001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi / 6) * val),
                //child: HomePage(),
                child: NotificationPage(),
              ));
            }),
        GestureDetector(
          onHorizontalDragUpdate: (e) {
            if (e.delta.dx > 0) {
              setState(()  {
                value = 1;
              });
            } else {
              setState(()  {
                value = 0;
              });
            }
          },
        )
      ],
    );
  }
}
