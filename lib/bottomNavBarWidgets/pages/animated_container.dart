import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double boxheight = 150;
  double boxWidth = 150;

  void animateContainer() {
    setState(() {
      boxWidth = 300;
      boxheight = 300;
    });
  }

  void animateContainerResize() {
    setState(() {
      boxWidth = 150;
      boxheight = 150;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              height: boxheight,
              width: boxWidth,
              color: Colors.deepPurple,
            ),
            ElevatedButton(
                onPressed: animateContainer, child: Text("Animate Container")),
            ElevatedButton(
                onPressed: animateContainerResize,
                child: Text("Animate resize"))
          ],
        ),
      ),
    );
  }
}
