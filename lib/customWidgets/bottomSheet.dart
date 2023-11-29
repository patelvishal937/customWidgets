import 'package:flutter/material.dart';

class BottomBarCustomWidget extends StatefulWidget {
  const BottomBarCustomWidget({super.key});

  @override
  State<BottomBarCustomWidget> createState() => _BottomBarCustomWidgetState();
}

class _BottomBarCustomWidgetState extends State<BottomBarCustomWidget> {
  @override
  List<List<String>> listsData = [
    ['Item 1', 'Item 2', 'Item 3'],
    ['Item A', 'Item B', 'Item C', 'Item D'],
    ['Item X', 'Item Y', 'Item Z'],
    ['Item P', 'Item Q', 'Item R'],
    ['Item M', 'Item N', 'Item O'],
  ];

  TextEditingController namecontroller = TextEditingController();
  TextEditingController shortnamecontroller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomBarWIdget"),
      ),
      body: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.8,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(    
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // cross icon
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close),
                        ),
                        // This is filter name
                        CustomtextField(namecontroller, "Filter name", () {}),

                        // This is short name title
                        CustomtextField(
                            shortnamecontroller, "short name", () {}),

                        // Button for creating shortcut
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(16),
                                  backgroundColor: const Color(0XFF075E54)),
                              onPressed: () {},
                              child: Text("create filter")),
                        )
                      ],
                    ),
                  ),
                );
              });
        },
        // This is customButton for open The bottomSheet
        child: Center(
          child: Container(
            margin: EdgeInsets.all(12),
            height: MediaQuery.of(context).size.height / 12,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                "Open The BottomSheet",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget CustomtextField(
      TextEditingController controller, String hintText, func) {
    return Container(
      height: 45.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black.withOpacity(0.3))),
      // decoration: Style.decoration,
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        onTap: func,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
              fontFamily: 'Helvetica',
              color: Colors.black.withOpacity(0.5),
              fontSize: 14.0),
          contentPadding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
        ),
      ),
    );
  }
}
