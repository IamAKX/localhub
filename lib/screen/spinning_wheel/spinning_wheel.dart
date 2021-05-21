import 'dart:async';
import 'dart:math';

import 'package:confetti/confetti.dart';
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
  ConfettiController _controllerCenterRight;
  ConfettiController _controllerCenterLeft;
  bool isWheelSpinned = false;
  dispose() {
    _dividerController.close();
    _controllerCenterRight.dispose();
    _controllerCenterLeft.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    _controllerCenterRight =
        ConfettiController(duration: const Duration(seconds: 2));
    _controllerCenterLeft =
        ConfettiController(duration: const Duration(seconds: 2));

    super.initState();
  }

  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  String result = '';
  body() {
    // _dividerController.stream.asBroadcastStream().listen((event) {},
    //     onDone: () {
    //   _controllerCenterRight.play();
    //   _controllerCenterLeft.play();
    // });
    _controllerCenterRight.play();
    _controllerCenterLeft.play();
    return Stack(
      children: [
        Container(
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
                    isWheelSpinned = true;
                    return RouletteScore(snapshot.data);
                  } else {
                    isWheelSpinned = false;
                    // if (isWheelSpinned) {
                    //   _controllerCenterRight.play();
                    //   _controllerCenterLeft.play();
                    // }
                    // _controllerCenterRight.play();
                    // _controllerCenterLeft.play();
                    return Container();
                  }
                },
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ConfettiWidget(
            confettiController: _controllerCenterRight,
            blastDirection: pi, // radial value - LEFT
            particleDrag: 0.05, // apply drag to the confetti
            emissionFrequency: 0.05, // how often it should emit
            numberOfParticles: 20, // number of particles to emit
            gravity: 0.05, // gravity - or fall speed
            minimumSize: const Size(5,
                5), // set the minimum potential size for the confetti (width, height)
            maximumSize: const Size(20, 20), // set the maximum pote
            shouldLoop: false,
            colors: const [
              Colors.green,
              Colors.blue,
              Colors.pink
            ], // manually specify the colors to be used
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: ConfettiWidget(
            confettiController: _controllerCenterLeft,
            blastDirection: 0, // radial value - RIGHT
            emissionFrequency: 0.6,
            minimumSize: const Size(5,
                5), // set the minimum potential size for the confetti (width, height)
            maximumSize: const Size(20,
                20), // set the maximum potential size for the confetti (width, height)
            numberOfParticles: 1,
            gravity: 0.1,
          ),
        ),
      ],
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
