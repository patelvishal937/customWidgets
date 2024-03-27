import 'package:flutter/material.dart';

class QuestLableWidget extends StatelessWidget {
  const QuestLableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Powered by Quest Labs",
            style: TextStyle(
                color: Color(0xff939393),
                fontSize: 10,
                fontWeight: FontWeight.w400),
          ),
          Image.asset(
            'assets/images/quest_logo.jpeg',
            width: 10,
            height: 10,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
