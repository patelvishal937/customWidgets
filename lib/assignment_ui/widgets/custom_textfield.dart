import 'package:authexample/assignment_ui/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_textstyle.dart';

class CustomTextField extends StatelessWidget {
  final String? hitText;
  final Widget? icon;
  final String titleOfTextField;
  final Widget? prefixIconWidget;
  final bool obscureText;
  final TextEditingController? controller;
  final bool? prefixIcon;
  final dynamic maxLines;
  final BorderRadius? borderRadius;
  void Function()? onTap;
  void Function(String)? onChanged;
  TextInputType inputType;
  FocusNode? focusNode;
  final Color? fillColor;
  List<TextInputFormatter>?  inputParameters;
  EdgeInsets? padding;
  bool enabled;

  TextStyle? style;

  CustomTextField(
      {this.icon,
        this.inputType = TextInputType.text,
      this.fillColor,
      this.hitText,
      this.onTap,
        this.padding,
      this.focusNode,
        this.controller,
      this.obscureText = false,
      this.enabled = true,
      this.maxLines,
      this.prefixIcon = true,
      this.borderRadius,
        this.inputParameters,
      this.prefixIconWidget,
        this.style,
        required this.titleOfTextField,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0 ,vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 2 ),
            child: Text(
              titleOfTextField,
              style: const TextStyle(color: Color(0xff4C4C4C),fontSize: 12 ,fontWeight: FontWeight.w500),
            ),
          ),
          CustomContainer(
            child: TextField(
              enabled: enabled,
              keyboardType: inputType,
              focusNode: focusNode,
              onTap: onTap,
              inputFormatters: inputParameters,
              style: style ?? TextStyle(
                fontSize: 16,
              ),

              controller: controller,
              obscureText: obscureText,
              onChanged: onChanged ?? (_) {},
              maxLines: maxLines,
              // minLines: 1,
              decoration: InputDecoration(
                // prefixIcon: (prefixIcon ?? true)
                //     ? IconButton(
                //         onPressed: () {},
                //         icon: icon ?? const SizedBox.shrink(),
                //       )
                //     : prefixIconWidget,
                filled: true,
                fillColor: fillColor ?? Colors.white,
                contentPadding: padding ??  EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: borderRadius ??
                    const  BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                  borderSide:const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                hintText: hitText ?? '',
                hintStyle: const TextStyle(color: Color(0xff939393),fontSize: 14 ,fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
