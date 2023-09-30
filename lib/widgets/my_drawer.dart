import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF0A8ED9),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(
              height: 130,
            ),
            Container(
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.home_outlined,
                  color: Color(0xFF0A8ED9),
                  size: 25,
                ),
                title: Text(
                  'Home',
                  style: GoogleFonts.raleway(
                    color: const Color(0xFF0A8ED9),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                onTap: () => {},
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Nearby',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            const Divider(
              height: 50,
              color: Colors.white,
              thickness: 1,
              endIndent: 120,
            ),
            ListTile(
              leading: const Icon(
                Icons.bookmark_border_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Bookmark',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Image.asset(
                "images/IC_Noti.png",
              ),
              title: Text(
                'Notification',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Image.asset("images/IC_Message.png"),
              title: Text(
                'Message',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            const Divider(
              height: 50,
              color: Colors.white,
              thickness: 1,
              endIndent: 120,
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Setting',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(
                Icons.help_outline_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Help',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(
                Icons.power_settings_new_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
    );
  }
}
