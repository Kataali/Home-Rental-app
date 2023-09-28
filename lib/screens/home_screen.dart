import 'package:flutter/material.dart';
import 'package:home_rent/widgets/house_card_widget.dart';
import 'package:home_rent/widgets/house_categories.dart';
import 'package:home_rent/widgets/house_pic_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // initial value of drop down
  String dropdownvalue = "Jakarta";
  // List of places to pass to dro down widget
  var items = ["Jakarta", "Tamale", "Kumasi", "Accra"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Location",
                          style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        DropdownButton(
                          dropdownColor: Colors.greenAccent,
                          padding: const EdgeInsets.all(2),
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: const TextStyle(fontSize: 18),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/IC_Notification.png"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 55,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 30,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Color(0xFFF6F6F6)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "Search address or near you",
                            hintStyle: const TextStyle(fontSize: 12),
                            filled: true,
                            // fillColor: Color.fromARGB(1, 131, 131, 131),
                            fillColor: const Color(0xFFF6F6F6),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/IC_Filter.png"))
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          height: 40,
                          width: 70,
                          child: Container(
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
                              style: TextButton.styleFrom(
                                  // fixedSize: Size(15, ),
                                  ),
                              onPressed: () {},
                              child: const Text(
                                "House",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const HouseCategory(text: "Apartment"),
                      const HouseCategory(text: "Hotel"),
                      const HouseCategory(text: "Villa"),
                      const HouseCategory(text: "Cottage"),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Near from you',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'See more',
                        style: TextStyle(
                          color: Color(0xFF848484),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HouseWidget(
                          image: "images/webaliser.png",
                          location: 1.8,
                          name: "Dreamsville House",
                          owner: 'Jl. Sultan Iskandar Muda'),
                      HouseWidget(
                          image: "images/digital marketing.jfif",
                          location: 3.0,
                          name: "Ascot House",
                          owner: 'Jl. Cilandak Tengah')
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Best for you',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'See more',
                        style: TextStyle(
                          color: Color(0xFF848484),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    HouseCard(
                        image: "images/pixels.jfif",
                        name: "Orchad House",
                        price: 2500000.00,
                        bedRoomNumber: 6,
                        bathRoomNumber: 4),
                    HouseCard(
                        image: "images/hollies.jfif",
                        name: "The Hollies House",
                        price: 20000000.00,
                        bedRoomNumber: 5,
                        bathRoomNumber: 2),
                    HouseCard(
                        image: "images/aviwerde.jfif",
                        name: "Sea Breezes House",
                        price: 900000.000,
                        bedRoomNumber: 2,
                        bathRoomNumber: 2),
                    HouseCard(
                        image: "images/little_copse.jfif",
                        name: "Little Copse",
                        price: 900000.00,
                        bedRoomNumber: 5,
                        bathRoomNumber: 2)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
