import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  const DropdownList({super.key});

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  String? dropdownValue;
  List<String> items = ["ohhkjhks", "two", "three"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appbar"),
      ),
      body: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_drop_down_circle),
        iconSize: 30,
        elevation: 16,
        style: TextStyle(color: Colors.teal),
        underline: Container(
          height: 2,
          color: Colors.black,
        ),
        hint: Text("enter the subject"),
        onChanged: (newvalue) {
          setState(
            () {
              dropdownValue = newvalue.toString();
            },
          );
        },
        items: <String>['hell', 'Two', 'Three', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
