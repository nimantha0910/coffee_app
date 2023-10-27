import 'package:flutter/material.dart';

class SelectedButton extends StatelessWidget {
  const SelectedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 121.0,
      height: 38.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xffc67c4e),
      ),
      child: const Center(
        child: Text(
          'Cappuccino',
          style: TextStyle(
              color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
