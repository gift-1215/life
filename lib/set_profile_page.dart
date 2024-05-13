import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:life/components/bio_edit_textfield.dart';
import 'package:life/resources/add_data.dart';
import 'package:life/resources/utilis.dart';

class SetProfilePage extends StatefulWidget {
  const SetProfilePage({super.key});

  @override
  State<SetProfilePage> createState() => _SetProfilePageState();
}

class _SetProfilePageState extends State<SetProfilePage> {
  final backGroundColor = const Color.fromARGB(255, 1, 1, 1);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController relationshipController = TextEditingController();
  final TextEditingController homeCityController = TextEditingController();
  final TextEditingController religionController = TextEditingController();
  final TextEditingController habitController = TextEditingController();
  final TextEditingController selfIntroController = TextEditingController();
  final TextEditingController workExpController = TextEditingController();

  Uint8List? _image;
  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  void saveProfile() async {
    debugPrint('called ${nameController.text}');
    String resp =
        await StoreData().saveData(name: nameController.text, file: _image!);
    debugPrint(resp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '自述履歷',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 45, 25, 134),
      ),
      body: Container(
        color: backGroundColor,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  margin: const EdgeInsets.all(20),
                  color: backGroundColor,
                  child: Stack(
                    children: [
                      _image != null
                          ? CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.18,
                              backgroundImage: MemoryImage(_image!),
                            )
                          : CircleAvatar(
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
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                BioEditTextField(
                    controller: nameController,
                    hintText: 'Name',
                    obscureText: false),
                BioEditTextField(
                    controller: cityController,
                    hintText: '居住城市',
                    obscureText: false),
                BioEditTextField(
                    controller: relationshipController,
                    hintText: '感情狀況',
                    obscureText: false),
                BioEditTextField(
                    controller: homeCityController,
                    hintText: '家鄉',
                    obscureText: false),
                BioEditTextField(
                    controller: religionController,
                    hintText: '信仰',
                    obscureText: false),
                BioEditTextField(
                    controller: habitController,
                    hintText: '興趣',
                    obscureText: false),
                BioEditTextField(
                    controller: selfIntroController,
                    hintText: '自訂簡介',
                    obscureText: false),
                BioEditTextField(
                    controller: workExpController,
                    hintText: '工作經歷',
                    obscureText: false),
                ElevatedButton(
                    onPressed: () {
                      saveProfile();
                      debugPrint('save pressed');
                    },
                    child: const Text(
                      '儲存',
                      style: TextStyle(fontSize: 25),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
