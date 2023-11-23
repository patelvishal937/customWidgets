import 'package:image_picker/image_picker.dart';

class PickedImageFromGallery {
  Future imagePickerFromGallery() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? imagePicked =
        await imagePicker.pickImage(source: ImageSource.gallery);
    print(imagePicked);
  }
}
