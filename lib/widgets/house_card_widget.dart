import 'package:flutter/material.dart';

class HouseCard extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final int bedRoomNumber;
  final int bathRoomNumber;

  const HouseCard(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.bedRoomNumber,
      required this.bathRoomNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 305,
        height: 88,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 78,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Text(
                    'GHS $price / Year',
                    style: const TextStyle(
                      color: Color(0xFF0A8ED9),
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/IC_Bed.png",
                        scale: 1,
                      ),
                      Text(
                        '$bedRoomNumber Bedroom',
                        style: const TextStyle(
                          color: Color(0xFF848484),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Image.asset(
                        "images/IC_Bath.png",
                        scale: 1,
                      ),
                      Text(
                        '$bathRoomNumber Bathroom',
                        style: const TextStyle(
                          color: Color(0xFF848484),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
