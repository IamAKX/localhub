import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';

class IntroSecond extends StatefulWidget {
  @override
  _IntroSecondState createState() => _IntroSecondState();
}

class _IntroSecondState extends State<IntroSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  body() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/colud_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'This platform is created to support local businesses',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'هذه المنصة صنعت لدعم المشاريع الإماراتية',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Spacer(),
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 15),
            minWidth: double.infinity,
            onPressed: () {
              Navigator.of(context).pushNamed('/chooseAccountType');
            },
            child: Text(
              'Continue as a guest',
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: BUTTON_BLACK,
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 15),
            minWidth: double.infinity,
            onPressed: () {
              Navigator.of(context).pushNamed('/chooseAccountType');
            },
            child: Text(
              'Continue with Instagram',
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: BUTTON_BLACK,
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 15),
            minWidth: double.infinity,
            onPressed: () {
              Navigator.of(context).pushNamed('/chooseAccountType');
            },
            child: Text(
              'Continue with Google',
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: BUTTON_BLACK,
          ),
        ],
      ),
    );
  }
}
