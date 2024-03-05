import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:life/map/flutter_map_page.dart';
import 'request.dart';
import 'provide.dart';
import 'personal_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(10.0),
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    debugPrint('Personal tapped.');
                    Get.to(PersonalPage());
                  },
                  child: Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Card(
                              margin: EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/blank-profile-picture-973460_960_720.webp',
                                height: 120,
                                width: 250,
                              ),
                            ),
                          ),
                          Expanded(flex: 2, child: Text('個人檔案' + user.email!)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Card(
                      margin: const EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          debugPrint('Provide tapped.');
                          Get.to(const Provide());
                        },
                        child: Container(
                          color: Colors.black54,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: const Text(
                            '供給',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      margin: const EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          debugPrint('需求');
                          Get.to(
                            const Request(),
                          );
                        },
                        child: Container(
                          color: Colors.black54,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: const Text(
                            '需求',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    debugPrint('Map tapped.');
                    Get.to(FlutterMapPage());
                  },
                  child: Container(
                    color: Colors.black54,
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width ,
                    child: const Text(
                      '地圖',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
