import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
   CustomElevatedButton({super.key ,required this.buttonText , this.onTap});
   String buttonText;
   void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFF9035FF), Color(0xFF0065FF),], // Your gradient colors
          ),
          borderRadius: BorderRadius.circular(10), // Container border radius
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 5, // How far the shadow should spread
              blurRadius: 7, // Soften the shadow
              offset: Offset(0, 3), // Shadow position, positive values are below the object
            ),
          ],
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
            color: Colors.white,
          ),
          ),
        ),
      ),
    );
  }
}
