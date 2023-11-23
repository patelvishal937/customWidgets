import 'dart:io';

import 'package:authexample/imagePicker/image_picker_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? imagepath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("imagePicked"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      PickedImageFromGallery().imagePickerFromGallery();
                      print(File(imagepath!.path));
                    });
                  },
                  child: Text("upload a image"))),
          // image ? Container() : Image.file(File(image!.path )),
          // Container(
          //   child: Image.file(imagepath!),
          // )
          imagepath == null
              ? Container()
              : Container(
                  child: Image.file(File(imagepath!.path)),
                )
        ],
      ),
    );
  }
}
