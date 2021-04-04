import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchInfluencer extends StatefulWidget {
  @override
  _SearchInfluencerState createState() => _SearchInfluencerState();
}

class _SearchInfluencerState extends State<SearchInfluencer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Card(
              elevation: 4,
              margin: EdgeInsets.only(top: 5, right: 15, left: 40, bottom: 5),
              color: Colors.white,
              child: Container(
                width: double.infinity,
                height: 80,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  'Sultan Sweet',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 7,
              left: 10,
              child: Image.asset('assets/images/user_square1.png'),
            ),
          ],
        ),
        Stack(
          children: [
            Card(
              elevation: 4,
              margin: EdgeInsets.only(top: 5, right: 15, left: 40, bottom: 5),
              color: Colors.white,
              child: Container(
                width: double.infinity,
                height: 80,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  'Sultan Sweet',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 7,
              left: 10,
              child: Image.asset('assets/images/user_square2.png'),
            ),
          ],
        ),
        Stack(
          children: [
            Card(
              elevation: 4,
              margin: EdgeInsets.only(top: 5, right: 15, left: 40, bottom: 5),
              color: Colors.white,
              child: Container(
                width: double.infinity,
                height: 80,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  'Sultan Sweet',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 7,
              left: 10,
              child: Image.asset('assets/images/user_square3.png'),
            ),
          ],
        ),
      ],
    );
  }
}
