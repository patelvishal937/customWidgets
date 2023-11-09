import 'package:flutter/material.dart';

class BottomBarCustomWidget extends StatefulWidget {
  const BottomBarCustomWidget({super.key});

  @override
  State<BottomBarCustomWidget> createState() => _BottomBarCustomWidgetState();
}

class _BottomBarCustomWidgetState extends State<BottomBarCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomBarWIdget"),
      ),
      body: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Text("hello");
              });
        },
        child: Container(
          child: Center(child: const Text("Hello")),
        ),
      ),
    );
  }
}
