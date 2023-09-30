import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsHouseImage extends StatelessWidget {
  const DetailsHouseImage(
      {super.key,
      required this.image,
      required this.location,
      required this.name,
      required this.owner,
      required this.bedroomNumber,
      required this.bathroomNumber});
  final String image;
  final String location;
  final String name;
  final String owner;
  final int bedroomNumber;
  final int bathroomNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 319,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Stack(
        children: [
          Stack(
            children: [
              Container(
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    alignment: FractionalOffset.topCenter,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: 295,
                  height: 106,
                  decoration: ShapeDecoration(
                      // color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 24,
                          spreadRadius: -5,
                        )
                      ]),
                ),
              )
            ],
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Container(
              width: 34,
              height: 34,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.24),
                shape: const OvalBorder(),
              ),
              child: const Icon(
                Icons.bookmark_border_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              width: 34,
              height: 34,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.24),
                shape: const OvalBorder(),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 191,
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
            top: 222,
            child: Text(
              "$owner, $location",
              style: GoogleFonts.raleway(
                color: const Color(0xFFD4D4D4),
                fontSize: 10,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 256,
            child: SizedBox(
              width: 115,
              height: 28,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Image.asset(
                      "images/IC_Bed.png",
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "$bedroomNumber Bedrooms",
                    style: GoogleFonts.raleway(
                      color: const Color(0xFFD6D6D6),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: 155,
              top: 256,
              child: SizedBox(
                width: 120,
                height: 28,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Image.asset(
                        "images/IC_Bath.png",
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "$bathroomNumber Bathrooms",
                      style: GoogleFonts.raleway(
                        color: const Color(0xFFD6D6D6),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
