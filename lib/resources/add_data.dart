import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

final FirebaseStorage _storage = FirebaseStorage.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final user = FirebaseAuth.instance.currentUser!;

class StoreData {
  Future<String> uploadImageToStorage(String childName, Uint8List file) async {
    Reference ref = _storage.ref().child(childName);
    UploadTask uploadTask = ref.putData(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  Future<String> saveData(
      {required String name, required Uint8List file}) async {
    String resp = "some error occurred";
    try {
      String imageUrl =
          await uploadImageToStorage('profile_image/${user.email}/image', file);
      await _firestore.collection('${user.email}').add({
        'name': name,
        'imageLink': imageUrl,
      });
      resp = 'cloud firestore success';
      //}
    } catch (err) {
      resp = err.toString();
    }
    return resp;
  }
}
