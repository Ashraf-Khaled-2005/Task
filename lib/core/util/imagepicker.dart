import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker/image_picker.dart';

class PickerHandle {
  static Future<File?> PickImageGallery() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image != null) {
      return File(image.path);
    } else {
      return null;
    }
  }

  static Future<String> Getimgaeurl(
      String uuid, File image, String child) async {
    final rref =
        FirebaseStorage.instance.ref().child(child).child(uuid + 'jpg');
    await rref.putFile(image!);
    final imageurl = await rref.getDownloadURL();
    return imageurl;
  }
}
