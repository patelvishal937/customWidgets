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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomBarWIdget"),
      ),
      body: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              backgroundColor: Color.fromARGB(255, 9, 6, 6),
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 4),
                            child: Icon(Icons.search),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            child: Text("Search"),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(
                          //       vertical: 4, horizontal: 6),
                          //   child: Container(
                          //       // width: double.infinity,
                          //       child: Icon(Icons.people)),
                          // ),
                        ],
                      ),
                    ),
                    // ListView.builder(
                    //   itemCount: List,
                    //   itemBuilder: (BuildContext context, int index) {
                    //     return ListTile(
                    //       title: Text('h'),
                    //     );
                    //   },
                    // )
                  ],
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
}
