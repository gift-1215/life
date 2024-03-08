import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life/SignIn/landing_page.dart';
import 'package:life/my_point_page.dart';
import 'my_drawer_buttons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: 50,
          child: Center(
              child: Text(
            'Airyzone Life',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 26),
          )),
        ),
        MyDrawerCardButton(
          page: LandingPage(),
          route: false,
          text: '首頁',
          icon: Icons.home,
        ),
        /*
                  MyDrawerCardButton(
                    onTap: null,
                    text: '現在',
                    icon: Icons.home,
                  ),
                  MyDrawerCardButton(
                    onTap: null,
                    text: '生活軌跡',
                    icon: Icons.home,
                  ),
                  MyDrawerCardButton(
                    onTap: null,
                    text: '我的最愛',
                    icon: Icons.home,
                  ),
                  MyDrawerCardButton(
                    onTap: null,
                    text: '收集冊',
                    icon: Icons.home,
                  ),
                  MyDrawerCardButton(
                    onTap: null,
                    text: 'AiryWalker',
                    icon: Icons.home,
                  ),
                  MyDrawerCardButton(
                    onTap: null,
                    text: 'LBS服務',
                    icon: Icons.home,
                  ),
                  MyDrawerCardButton(
                    page: MyPointPage,
                    text: '我的推薦碼',
                    icon: Icons.power_input_outlined,
                  ),*/
        const MyDrawerCardButton(
          page: MyPointPage(),
          text: '我的點數',
          route: true,
          icon: Icons.money,
        ),
        /*
                  MyDrawerCardButton(
                    onTap: null,
                    text: '商城',
                    icon: Icons.home,
                  ),
                  MyDrawerCardButton(
                    onTap: null,
                    text: '登出',
                    icon: Icons.logout,
                  ),
                  */
        const MyDrawerCardButton(
          page: MyPointPage(),
          text: '設定',
          icon: Icons.settings,
          route: true,
        ),
      ],
    );
  }
}
