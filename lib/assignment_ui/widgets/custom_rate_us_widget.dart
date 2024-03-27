import 'package:flutter/material.dart';

class CustomRateUsWidget extends StatefulWidget {
  @override
  _CustomRateUsWidgetState createState() => _CustomRateUsWidgetState();
}

class _CustomRateUsWidgetState extends State<CustomRateUsWidget> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const  Padding(
         padding: const EdgeInsets.symmetric(horizontal:  8.0),
         child:  Text(
            "Rate Us",
            style:  TextStyle(
                color: Color(0xff4C4C4C),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
       ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.star, color: _rating >= 1 ? Colors.yellow : Color(0xffEFEFEF) , size: 36,),
              onPressed: () {
                setState(() {
                  _rating = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.star, color: _rating >= 2 ? Colors.yellow : Color(0xffEFEFEF),size: 36),
              onPressed: () {
                setState(() {
                  _rating = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.star, color: _rating >= 3 ? Colors.yellow : Color(0xffEFEFEF), size: 36),
              onPressed: () {
                setState(() {
                  _rating = 3;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.star, color: _rating >= 4 ? Colors.yellow : Color(0xffEFEFEF), size: 36),
              onPressed: () {
                setState(() {
                  _rating = 4;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.star, color: _rating >= 5 ? Colors.yellow : Color(0xffEFEFEF), size: 36),
              onPressed: () {
                setState(() {
                  _rating = 5;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}


