import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';

class AccountType extends StatefulWidget {
  @override
  _AccountTypeState createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  var width;
  var height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: body(),
    );
  }

  body() {
    return Container(
      width: width,
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 20,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/colud_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 30,
          ),
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Spacer(),
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 25),
            minWidth: double.infinity,
            onPressed: () {
              Navigator.of(context).pushNamed('/mainIntro');
            },
            child: Text(
              'Personal Account',
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
            height: 20,
          ),
          FlatButton(
            minWidth: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 25),
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/business/home', (route) => false);
            },
            child: Text(
              'Business Account',
              style: GoogleFonts.openSans(
                color: BUTTON_BLACK,
                fontWeight: FontWeight.bold,
              ),
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: BUTTON_BLACK),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
