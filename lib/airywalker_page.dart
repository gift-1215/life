import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life/components/my_drawer.dart';

class AirywalkerPage extends StatelessWidget {
  const AirywalkerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'AiryWalker',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 91, 115, 98),
        ),
        drawer: const Drawer(child: MyDrawer()),
        body: Container(
          color: Colors.black87,
          child: const Center(
            child: Column(
              children: [
                Expanded(flex: 1, child: SizedBox()),
                Expanded(
                    flex: 1,
                    child: Center(
                        child: Text(
                      '目前點數',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ))),
                Expanded(
                    flex: 1,
                    child: Center(
                        child: Text(
                      '198,964',
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ))),
                Expanded(
                    flex: 1,
                    child: Center(
                        child: Text(
                      '有效期限 2026/12/15',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ))),
                Expanded(flex: 10, child: SingleChildScrollView()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
