import 'package:flutter/material.dart';

class PromoButton extends StatelessWidget {
  const PromoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xffED5151),
      ),
      child: const Center(
        child: Text(
          'Promo',
          style: TextStyle(
              color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
