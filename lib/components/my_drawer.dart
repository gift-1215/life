import 'package:flutter/material.dart';
import 'package:life/SignIn/auth_page.dart';
import 'package:life/airywalker_page.dart';
import 'package:life/map/flutter_map_page.dart';
import 'package:life/my_collection_page.dart';
import 'package:life/my_point_page.dart';
import 'package:life/sign_out_page.dart';
import 'package:life/store_page.dart';
import 'my_drawer_buttons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(
          height: 50,
          child: Center(
              child: Text(
            'Airyzone Life',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 26),
          )),
        ),
        const MyDrawerCardButton(
          page: AuthPage(),
          route: false,
          text: '首頁',
          icon: Icons.home,
        ),
        const MyDrawerCardButton(
          page: MyCollectionPage(),
          route: false,
          text: '收集冊',
          icon: Icons.collections_bookmark,
        ),
        const MyDrawerCardButton(
          page: AirywalkerPage(),
          route: false,
          text: 'AiryWalker',
          icon: Icons.directions_walk,
        ),
        const MyDrawerCardButton(
          page: FlutterMapPage(),
          route: false,
          text: 'LBS 服務',
          icon: Icons.map_rounded,
        ),
        const MyDrawerCardButton(
          page: MyPointPage(),
          text: '我的推薦碼',
          route: false,
          icon: Icons.qr_code,
        ),
        const MyDrawerCardButton(
          page: MyPointPage(),
          text: '我的點數',
          route: false,
          icon: Icons.money,
        ),
        MyDrawerCardButton(
          page: StorePage(),
          text: '商城',
          route: false,
          icon: Icons.store,
        ),
        MyDrawerCardButton(
          page: SignOutPage(),
          text: '登出',
          route: false,
          icon: Icons.money,
        ),
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
