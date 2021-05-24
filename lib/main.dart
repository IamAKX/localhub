import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/screen/home_container/home_container.dart';
import 'package:localhub/screen/intro/intro_first.dart';

import 'config/navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale("en"),
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
      ],
      title: 'Local Hub',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavRoute.generatedRoute,
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      home: IntroFirst(),
    );
  }
}
