import 'package:image_picker/image_picker.dart';

class PickedImageFromGallery {
  ImagePicker imagePicker = ImagePicker();
  Future imagePickerFromGallery(XFile? image) async {
    final XFile? imagePicked =
        await imagePicker.pickImage(source: ImageSource.gallery);
    image = imagePicked;
    print(image);
    return image;
  }
}
