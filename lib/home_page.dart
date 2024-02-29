import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'request.dart';
import 'provide.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {
                        debugPrint('Personal tapped.');
                      },
                      child: Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                            '個人檔案',
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
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
                              height: 200,
                              child: const Text(
                                '供給',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
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
                              height: 200,
                              child: const Text(
                                '需求',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        );
  }
}
