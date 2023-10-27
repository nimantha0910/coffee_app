import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String imagePath;
  final Size screenSize;
  const PromoCard({
    super.key,
    required this.imagePath,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        imagePath,
        width: screenSize.width,
        height: 140,
        fit: BoxFit.cover,
      ),
    );
  }
}
