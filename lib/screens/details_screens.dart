import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rent/widgets/bottom_appbar.dart';
import 'package:home_rent/widgets/details_house_pic_widget.dart';
import 'package:home_rent/widgets/gallery_widget.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const DetailsHouseImage(
                      image: "images/webaliser_1.jfif",
                      location: "Jakarta selatan",
                      name: "Dreamsville House",
                      owner: "Jl. Sultan Iskandar Muda",
                      bedroomNumber: 6,
                      bathroomNumber: 4),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 335,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... ',
                                style: GoogleFonts.raleway(
                                  color: const Color(0xFF848484),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  // height: 0.12,
                                ),
                              ),
                              TextSpan(
                                text: 'Show More',
                                style: GoogleFonts.raleway(
                                  color: const Color(0xFF9FD9FA),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  // height: 0.12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          image: const DecorationImage(
                            image: AssetImage(
                              "images/Gary.png",
                            ),
                            alignment: FractionalOffset.topCenter,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Garry Allen',
                                style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Text(
                                'Owner',
                                style: GoogleFonts.raleway(
                                  color: const Color(0xFF848484),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            decoration: ShapeDecoration(
                              color: const Color(0x7F0A8ED9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: Image.asset("images/phone.png"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 28,
                            height: 28,
                            decoration: ShapeDecoration(
                              color: const Color(0x7F0A8ED9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: Image.asset("images/message.png"),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 336,
                    height: 111,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gallery",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const GalleryImageWidget(
                                  image: "images/gallery_1.jfif"),
                              const GalleryImageWidget(
                                  image: "images/Gallery_4.jfif"),
                              const GalleryImageWidget(
                                  image: "images/Gallery_3.jfif"),
                              Stack(
                                children: [
                                  const GalleryImageWidget(
                                      image: "images/Gallery_2.jfif"),
                                  Positioned(
                                      left: 26,
                                      top: 25,
                                      child: Text("+5",
                                          style: GoogleFonts.raleway(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          )))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 375,
                        height: 161,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          image: const DecorationImage(
                              image: AssetImage("images/map.png"),
                              fit: BoxFit.fill),
                        ),
                        // child: Image.asset(
                        //   "images/map.png",
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                      Positioned(
                        right: 100,
                        top: 60,
                        child: Image.asset("images/Group 9.png"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(price: 2500000.00));
  }
}
