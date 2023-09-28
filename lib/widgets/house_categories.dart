import 'package:flutter/material.dart';

class HouseCategory extends StatelessWidget {
  final String text;
  const HouseCategory({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFF6F6F6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
