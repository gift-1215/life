// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:life/my_point_page.dart';

class MyDrawerCardButton extends StatelessWidget {
  //final Function()? onTap;
  final Widget page;
  final String text;
  final IconData icon;
  final bool route;

  const MyDrawerCardButton(
      {super.key,
      required this.page,
      required this.text,
      required this.icon,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue,
          onTap: () {
            debugPrint('${text}tapped.');
            Get.offAll(page);
          },
          child: Container(
            color: Color.fromARGB(133, 0, 0, 9),
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              children: [
                Expanded(flex: 1, child: SizedBox()),
                Expanded(
                    flex: 2,
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 25,
                    )),
                Expanded(
                  flex: 7,
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(flex: 3, child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
