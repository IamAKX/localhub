import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';

class CustomAvatars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('/likes'),
      child: Container(
        padding: EdgeInsets.only(left: 5),
        width: double.infinity,
        alignment: Alignment.center,
        height: 40,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Align(
              // alignment: Alignment.centerLeft,
              widthFactor: 0.6,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 18,

                child: Image.asset(
                    'assets/images/user1.png'), // Provide your custom image
              ),
            ),
            Align(
              // alignment: Alignment.center,
              widthFactor: 0.6,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 18,
                child: Image.asset(
                    'assets/images/user2.png'), // Provide your custom image
              ),
            ),
            Align(
              // alignment: Alignment.centerLeft,
              widthFactor: 0.6,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 18,
                child: Image.asset(
                    'assets/images/user3.png'), // Provide your custom image
              ),
            ),
            Align(
              // alignment: Alignment.centerRight,
              widthFactor: 0.6,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18,
                child: Text(
                  '+50',
                  style: GoogleFonts.openSans(
                    color: BUTTON_BLACK,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ), // Provide your custom image
              ),
            ),
          ],
        ),
      ),
    );
  }
}
