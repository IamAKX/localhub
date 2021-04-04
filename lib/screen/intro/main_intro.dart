import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/config/static_data.dart';

class MainIntro extends StatefulWidget {
  @override
  _MainIntroState createState() => _MainIntroState();
}

class _MainIntroState extends State<MainIntro> {
  List<PageViewModel> pages = [
    PageViewModel(
      title: LOREM_TITLE,
      body: LOREM_BODY_SHORT,
      image: Image.asset('assets/images/intro.png'),
    ),
    PageViewModel(
      title: LOREM_TITLE,
      body: LOREM_BODY_SHORT,
      image: Image.asset('assets/images/intro.png'),
    ),
    PageViewModel(
      title: LOREM_TITLE,
      body: LOREM_BODY_SHORT,
      image: Image.asset('assets/images/intro.png'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      showSkipButton: true,
      skip: Text(
        "Skip",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      next: Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      showNextButton: true,
      done: Text(
        "Done",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onDone: () {
        Navigator.of(context).pushNamed('/signIn');
      },
      onSkip: () {
        Navigator.of(context).pushNamed('/signIn');
      },
      isProgress: true,
      isProgressTap: true,
      dotsDecorator: DotsDecorator(
        size: const Size(20.0, 5.0),
        activeSize: const Size(20.0, 5.0),
        activeColor: ACTIVE_INDICATOR,
        color: Colors.grey.withOpacity(0.2),
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
