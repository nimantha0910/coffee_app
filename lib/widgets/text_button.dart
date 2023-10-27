import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String item;
  const CustomTextButton({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 38.0,
      margin: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          item,
          style: const TextStyle(
            color: Color(0xff2f4b4e),
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
