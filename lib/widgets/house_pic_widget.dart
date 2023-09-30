import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent/screens/details_screens.dart';

class HouseWidget extends StatelessWidget {
  final String image;
  final double location;
  final String name;
  final String owner;
  const HouseWidget(
      {super.key,
      required this.image,
      required this.location,
      required this.name,
      required this.owner});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 25, 5),
      child: Container(
        width: 222,
        height: 272,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Stack(
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    // child: Expanded(child: Image.asset(image)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: 182,
                    height: 54,
                    decoration: const BoxDecoration(
                      // color: Colors.black26,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 24,
                          // offset: Offset(0, 16),
                          spreadRadius: -5,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 20,
              top: 215,
              child: Text(
                name,
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 242,
              child: Text(
                owner,
                style: GoogleFonts.raleway(
                  color: const Color(0xFFD6D6D6),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 120,
              top: 20,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 4, left: 8, right: 10, bottom: 4),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.black.withOpacity(0.24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        '$location km',
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
