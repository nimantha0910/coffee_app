import 'package:flutter/material.dart';

class CustomerSearchField extends StatelessWidget {
  const CustomerSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xff313131)),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          suffixIcon: Image.asset('assets/icons/filter.png'),
          hintText: 'Search Coffee',
          hintStyle: const TextStyle(color: Colors.white),
          contentPadding: const EdgeInsets.only(top: 15),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
