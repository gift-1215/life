import 'package:flutter/material.dart';
import 'package:life/components/my_card_button.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '個人檔案',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                      height: 150,
                      width: 150,
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: SizedBox(
                            height: 120,
                            child: Image.asset(
                              'assets/blank-profile-picture-973460_960_720.webp',
                            ),
                          ),
                        ),
                      )),
                  const Text(
                    "王小明",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  const Text(
                    "Xiao-Ming, Wang",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  Flexible(
                    flex: 1,
                    child: Card(
                      margin: const EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.blue,
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                        child: Container(
                          color: Colors.black54,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text(
                              '自述履歷',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          MyCardButton(onTap: null, text: '宗教'),
                          MyCardButton(onTap: null, text: '養老'),
                        ],
                      )),
                  const Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          MyCardButton(onTap: null, text: '健身'),
                          MyCardButton(onTap: null, text: '寵物'),
                        ],
                      )),
                  const Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          MyCardButton(onTap: null, text: '交友'),
                          MyCardButton(onTap: null, text: '教育'),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
