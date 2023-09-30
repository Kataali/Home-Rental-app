import 'package:flutter/material.dart';

class GalleryImageWidget extends StatelessWidget {
  const GalleryImageWidget({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Container(
          width: 72,
          height: 72,
          decoration: ShapeDecoration(
            color: const Color(0xFFC4C4C4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          ),
        ));
  }
}
