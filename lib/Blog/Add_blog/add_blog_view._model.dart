import 'dart:io';

import 'package:blog/models/base_model.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class AddBlogViewModel extends BaseModel{
  var items = [
    'Sports',
    'Movies',
  ];
  String selectedDropdownValue = 'Sports';
  File? image;

  onTapSubmitButton() {}

  onTapCaptureImageButton() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) {
        return null;
      } else {
        var temporyImage = File(image.path);
        this.image = temporyImage;
      }
    } on PlatformException catch (e) {
      print('Faild to pick image');
    }
  }

  Future onTapPickImageButton() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) {
        return null;
      } else {
        var temporyImage = File(image.path);
        this.image = temporyImage;

      }
    } on PlatformException catch (e) {
      print('Faild to pick image');
    }
  }
}
