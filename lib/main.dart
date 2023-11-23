import 'package:authexample/imagePicker/image_picker_widget.dart';
import 'package:authexample/package_widgets/pdf_webview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImagePickerWidget(),
    );
  }
}
