// import 'package:flutter/material.dart';

// class CustomListTileWidget extends StatefulWidget {
//   const CustomListTileWidget({Key? key}) : super(key: key);

//   @override
//   State<CustomListTileWidget> createState() => _CustomListTileWidgetState();
// }

// class _CustomListTileWidgetState extends State<CustomListTileWidget> {
//   bool isExpanded = false;
//   final descriptionText =
//       "hello my name is vishal patel what is your occupation and what is the name of your organization how I can able to";
//   final dateText = 'Date:';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Customwidget"),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ExpansionTile(
//             initiallyExpanded: false,
//             title: Row(
//               children: [
//                 Text(
//                   isExpanded
//                       ? descriptionText
//                       : _getShortenedText(descriptionText),
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                     child: Text(
//                       '$dateText',
//                       style: TextStyle(fontSize: 14, color: Colors.grey),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             onExpansionChanged: (bool expanded) {
//               setState(() {
//                 isExpanded = expanded;
//               });
//             },
//             children: [
//               if (isExpanded)
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   child: Text(
//                     '$dateText',
//                     style: TextStyle(fontSize: 14, color: Colors.grey),
//                   ),
//                 ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   String _getShortenedText(String text) {
//     if (text.length <= 50) {
//       return text;
//     } else {
//       return text.substring(0, 20) + '...';
//     }
//   }
// }
import 'package:flutter/material.dart';

class CustomListTileWidget extends StatefulWidget {
  const CustomListTileWidget({Key? key}) : super(key: key);

  @override
  State<CustomListTileWidget> createState() => _CustomListTileWidgetState();
}

class _CustomListTileWidgetState extends State<CustomListTileWidget> {
  bool isExpanded = false;
  final descriptionText =
      "hello my name is vishal patel what is your occupation and what is the name of your organization how I can able to";
  final dateText = 'Date:';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customwidget"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpansionTile(
            initiallyExpanded: false,
            title: Flexible(
              child: Text(
                descriptionText,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getShortenedText(String text) {
    if (text.length <= 50) {
      return text;
    } else {
      return text.substring(0, 20) + '...';
    }
  }
}
