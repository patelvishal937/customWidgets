// import 'dart:io';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:authexample/imagePicker/image_picker_util.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ImagePickerWidget extends StatefulWidget {
//   const ImagePickerWidget({Key? key}) : super(key: key);

//   @override
//   State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
// }

// class _ImagePickerWidgetState extends State<ImagePickerWidget> {
//   XFile? imagepath;
//   CroppedFile? _croppedFile;

//   cropImage() async {
//     CroppedFile? croppedFile = await ImageCropper().cropImage(
//       sourcePath: imagepath!.path,
//       aspectRatioPresets: [
//         CropAspectRatioPreset.square,
//         CropAspectRatioPreset.ratio3x2,
//         CropAspectRatioPreset.original,
//         CropAspectRatioPreset.ratio4x3,
//         CropAspectRatioPreset.ratio16x9
//       ],
//       uiSettings: [
//         AndroidUiSettings(
//             toolbarTitle: 'Cropper',
//             toolbarColor: Colors.deepOrange,
//             toolbarWidgetColor: Colors.white,
//             initAspectRatio: CropAspectRatioPreset.original,
//             lockAspectRatio: false),
//         IOSUiSettings(
//           title: 'Cropper',
//         ),
//         WebUiSettings(
//           context: context,
//         ),
//       ],
//     );

//     if (croppedFile != null) {
//       _croppedFile = croppedFile;
//       setState(() {});
//     } else {
//       print("Image is not cropped.");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Image Picked"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ElevatedButton(
//               onPressed: () async {
//                 await PickedImageFromGalleryAndCropImage().CropImage();
//                 setState(() {});
//               },
//               child: Text("cropped image")),
//           Center(
//             child: ElevatedButton(
//               onPressed: () async {
//                 // if (imagepath != null) {
//                 await PickedImageFromGalleryAndCropImage()
//                     .imagePickerFromGallery(imagepath);
//                 print(imagepath);
//               },
//               child: Text("Upload an image"),
//             ),
//           ),
//           imagepath == null
//               ? Container()
//               : Container(
//                   // height: MediaQuery.of(context).size.height / 5,
//                   height: 400,
//                   width: 350,
//                   child: Image.file(
//                     File(imagepath!.path),
//                     fit: BoxFit.contain,
//                   ),
//                 )
//         ],
//       ),
//     );
//   }
// }
import 'dart:io';
import 'package:authexample/imagePicker/image_picker_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? imagepath;
  CroppedFile? _croppedFile;
  PickedImageFromGallery imagePicker = PickedImageFromGallery();

  // Function to open the image picker and handle cropping
  Future<void> pickAndCropImage() async {
    // Use 'await' to wait for the image picking operation to complete
    XFile? pickedImage = await imagePicker.imagePickerFromGallery(imagepath);

    if (pickedImage != null) {
      // Set the picked image path to the state
      setState(() {
        imagepath = pickedImage;
      });

      // Crop the picked image
      await cropImage();
    }
  }

  // Function to crop the selected image
  Future<void> cropImage() async {
    if (imagepath == null) {
      print("No image selected for cropping.");
      return;
    }

    try {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: imagepath!.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: Colors.deepOrange,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          ),
          WebUiSettings(
            context: context,
          ),
        ],
      );

      if (croppedFile != null) {
        setState(() {
          _croppedFile = croppedFile;
        });
      } else {
        print("Image is not cropped.");
      }
    } catch (e) {
      print("Error cropping image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picked"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              await pickAndCropImage();
            },
            child: Text("Pick and Crop Image"),
          ),
          _croppedFile == null
              ? Container()
              : Container(
                  height: 400,
                  width: 350,
                  child: Image.file(
                    File(_croppedFile!.path),
                    fit: BoxFit.contain,
                  ),
                )
        ],
      ),
    );
  }
}
