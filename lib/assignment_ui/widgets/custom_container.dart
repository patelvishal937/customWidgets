import 'package:flutter/material.dart';
import '../utils/app_color.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({super.key , required this.child,this.margin });
  Widget child;
  EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.testContainerBorderColor),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      margin: margin,
      child: child,
    );
  }
}
