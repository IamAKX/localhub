import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpinningResult extends StatefulWidget {
  Object result;
  SpinningResult(this.result) : super();
  @override
  _SpinningResultState createState() => _SpinningResultState();
}

class _SpinningResultState extends State<SpinningResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      appBar: AppBar(),
    );
  }

  body() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/colud_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Congratulations!',
            style: GoogleFonts.openSans(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'You have won a ${widget.result} voucher for Locals Hub on your next visit!',
            style: GoogleFonts.openSans(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
