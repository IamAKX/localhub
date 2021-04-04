import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_spinning_wheel/flutter_spinning_wheel.dart';
import 'package:google_fonts/google_fonts.dart';

class LuckySpinningWheel extends StatefulWidget {
  @override
  _LuckySpinningWheelState createState() => _LuckySpinningWheelState();
}

final Map<int, String> labels = {
  1: '1000\$',
  2: '400\$',
  3: '800\$',
  4: '7000\$',
  5: '5000\$',
  6: '300\$',
  7: '2000\$',
  8: '100\$',
};

class _LuckySpinningWheelState extends State<LuckySpinningWheel> {
  final StreamController _dividerController = StreamController<int>();

  dispose() {
    _dividerController.close();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  String result = '';
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
            'Spin The Wheel!',
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Stand a chance to win coupons for your \nnext visit!',
            style: GoogleFonts.openSans(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          SpinningWheel(
            Image.asset('assets/images/roulette-8-300.png'),
            width: 310,
            height: 310,
            initialSpinAngle: _generateRandomAngle(),
            spinResistance: 0.6,
            canInteractWhileSpinning: false,
            dividers: 8,
            onUpdate: _dividerController.add,
            onEnd: _dividerController.add,

            // onEnd: (event) {
            //   Navigator.of(context)
            //       .pushNamed('/spinningWheelResult', arguments: result);
            // },
            secondaryImage:
                Image.asset('assets/images/roulette-center-300.png'),
            secondaryImageHeight: 110,
            secondaryImageWidth: 110,
          ),
          SizedBox(height: 30),
          StreamBuilder(
            stream: _dividerController.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                result = labels[snapshot.data];
                return RouletteScore(snapshot.data);
              } else
                return Container();
            },
          )
        ],
      ),
    );
  }

  double _generateRandomAngle() => Random().nextDouble() * pi * 2;
}

class RouletteScore extends StatelessWidget {
  final int selected;

  RouletteScore(this.selected);

  @override
  Widget build(BuildContext context) {
    return Text('${labels[selected]}',
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24.0));
  }
}
