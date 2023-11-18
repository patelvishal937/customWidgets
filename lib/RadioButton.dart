
import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  final int value;
  final int? groupValue;
  final void Function(int) onChanged;

  const CustomRadio({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);

    return InkWell(
      onTap: () => widget.onChanged(widget.value),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          border: Border.all(
            color: selected ? Colors.blue : Colors.black,
          ),
          borderRadius: BorderRadius.circular(0),
          color: selected ? Colors.blue : null,
        ),
        child: selected
            ? Icon(
                Icons.check,
                size: 18,
                weight: 2,
                color: selected ? Colors.white : Colors.grey[200],
              )
            : null,
      ),
    );
  }
}
