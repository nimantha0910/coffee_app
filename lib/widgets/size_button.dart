import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget {
  final bool isSelected;
  final String size;
  const SizeButton({
    super.key,
    this.isSelected = false,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: isSelected ? const Color(0xfffff5ee) : const Color(0xffdedede),
        border: Border.all(
          color: isSelected ? const Color(0xffc67c4e) : const Color(0xffdedede),
        ),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color:
                isSelected ? const Color(0xffc67c4e) : const Color(0xff2f2d2c),
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
