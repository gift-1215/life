import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:life/components/my_card_button.dart';
import 'package:life/set_profile_page.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  final backGroundColor = const Color.fromARGB(255, 1, 1, 1);
  final user = FirebaseAuth.instance.currentUser!;

  late String imageUrl;
  final storage = FirebaseStorage.instance;

  void initState() {
    super.initState();
    imageUrl = '';
    getImageUrl();
  }

  Future<void> getImageUrl() async {
    final ref = storage.ref().child('profile_image/${user.email}/image');
    final url = await ref.getDownloadURL();
    setState(() {
      imageUrl = url;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '個人檔案',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 45, 25, 134),
      ),
      body: Container(
        color: backGroundColor,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.all(20),
                    color: backGroundColor,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.18,
                          backgroundImage: NetworkImage(imageUrl) != null
                              ? NetworkImage(imageUrl)
                              : const NetworkImage(
                                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fgithub.com%2Fmozilla%2Fhotdish%2Fissues%2F264&psig=AOvVaw3r1cGdpUsCIBn1xii9Kx8z&ust=1709925488786000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMCjyfzu4oQDFQAAAAAdAAAAABAF'),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                      stream: FirebaseFirestore.instance
                          .collection('${user.email}')
                          .snapshots(),
                      builder: (_, snapshot) {
                        if (user.displayName != '')
                          return Center(
                              child: Text(
                            user.displayName!,
                            style: TextStyle(color: Colors.white, fontSize: 60),
                          ));

                        if (snapshot.hasError)
                          return Text('Error = ${snapshot.error}');

                        if (snapshot.hasData) {
                          final docs = snapshot.data!.docs;
                          return ListView.builder(
                            itemCount: docs.length,
                            itemBuilder: (_, i) {
                              final data = docs[i].data();
                              return Center(
                                  child: Text(
                                data['name'],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 60),
                              ));
                            },
                          );
                        }

                        return Center(child: CircularProgressIndicator());
                      },
                    ),
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
                          Get.to(SetProfilePage());
                        },
                        child: Container(
                          color: Colors.black54,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text(
                              '自述履歷',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
