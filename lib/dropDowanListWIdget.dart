import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  const DropdownList({super.key});

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  String? DropDownValue;
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appbar"),
      ),
      body: Center(
        child: Card(
          elevation: 2,
          color: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  // This value is for current value of dropdown list
                  value: DropDownValue,
                  // showcase when no Items are selected
                  hint: Text('Items'),
                  // color for Dropdown
                  dropdownColor: Colors.blueAccent,
                  // get the data from List showcase items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    );
                  }).toList(),
                  // assign new value to dropdown value
                  onChanged: (String? value) {
                    setState(() {
                      DropDownValue = value!;
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
