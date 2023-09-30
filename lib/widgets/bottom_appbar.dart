import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.price});
  final double price;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 70,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: "Price\n\n",
              style: GoogleFonts.raleway(
                color: const Color(0xFF848484),
                fontSize: 12,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
              children: [
                TextSpan(
                  text: "GHS $price / Year",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 122,
            height: 43,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(-0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF9FD9FA), Color(0xFF098DD8)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Rent Now",
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
