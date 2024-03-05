import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:life/components/my_card_button.dart';
import 'package:life/components/utilis.dart';

class PersonalPage extends StatefulWidget {
  PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  final backGroundColor = const Color.fromARGB(255, 1, 1, 1);



  Uint8List? _image;
  void selectImage() async{
    Uint8List img = await pickImage(ImageSource.gallery);
    setState((){
      _image = img;
    });
  }

  Future upLoadProfileImage() async{
    //final path = 'profile_image/${_image.}'
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
                        _image != null ? CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.18,
                          backgroundImage: MemoryImage(_image!),
                        ):
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.18,
                          backgroundImage: const AssetImage(
                              'assets/blank-profile-picture-973460_960_720.webp'),
                        ),
                        Positioned(
                          bottom: -MediaQuery.of(context).size.width * 0.02,
                          left: MediaQuery.of(context).size.width * 0.24,
                          child: IconButton(
                            onPressed: selectImage,
                            icon: const Icon(
                              Icons.add_a_photo,
                              size: 30,
                              color: Color.fromARGB(255, 84, 191, 240),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
