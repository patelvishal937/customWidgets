import 'package:authexample/bottomNavBarWidgets/pages/animated_container.dart';
import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int currentIndex = 0;
  // here we created the currentindex where the current index is zero
  // then when create a method of navigateTootherpage
  // when this method is called we get index of tap and then we change the currentindext to tapped index
  // this is the way how this function will work
  void navigateToOtherPage(int Index) {
    setState(() {
      currentIndex = Index;
    });
  }

  // for navigation to another widget we create a list of widgets

  List<Widget> screens = [
    AnimatedContainerWidget(),
    const Center(
      child: Text("Two"),
    ),
    const Center(
      child: Text("three"),
    ),
    const Center(
      child: Text("four"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple,
      // appBar: AppBar(
      //   title: const Text("bottomNavBar"),
      // ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: navigateToOtherPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.abc,
                // color: Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Two'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Three'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Four'),
        ],
      ),
    );
  }
}
