import 'package:authexample/bottomNavBarWidgets/bottom_navbar_widget.dart';
import 'package:authexample/customWidgets/bottomSheet.dart';
import 'package:authexample/imagePicker/image_picker_widget.dart';
import 'package:authexample/package_widgets/pdf_webview.dart';
import 'package:authexample/poll/flutter_poll.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavbarWidget(),
    );
  }
}
