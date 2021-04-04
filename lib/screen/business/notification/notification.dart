import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';

class BusinessNotification extends StatefulWidget {
  @override
  _BusinessNotificationState createState() => _BusinessNotificationState();
}

class _BusinessNotificationState extends State<BusinessNotification> {
  var width, height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Notification'),
      ),
      body: body(),
    );
  }

  body() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Locals Hub',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Run your business with us to grow more using \nour App!',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Your Plan:',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 7,
              margin: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 18),
                                decoration: BoxDecoration(
                                  color: Color(0xff565656),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Text(
                                  'BEST VALUE',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '12- Month',
                                style: GoogleFonts.openSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Save over AED 79/year',
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        flex: 1,
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'AED',
                                    style: GoogleFonts.openSans(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '99',
                                    style: GoogleFonts.openSans(
                                      fontSize: 39,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '99',
                                    style: GoogleFonts.openSans(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Container(
                                    height: 44,
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      '/year',
                                      style: GoogleFonts.openSans(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'That’s just AED 8.33 \nper month1',
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        flex: 1,
                      ),
                      Icon(Icons.chevron_right_outlined),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 7,
              margin: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '12- Month',
                                style: GoogleFonts.openSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'With 14-Day FREE Trial Save over AED 19.year',
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        flex: 1,
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'AED',
                                    style: GoogleFonts.openSans(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '29',
                                    style: GoogleFonts.openSans(
                                      fontSize: 39,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '99',
                                    style: GoogleFonts.openSans(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Container(
                                    height: 44,
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      '/Quater',
                                      style: GoogleFonts.openSans(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'That’s just AED 13.33 \nper month1',
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        flex: 1,
                      ),
                      Icon(Icons.chevron_right_outlined),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 7,
              margin: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '1- Month',
                                style: GoogleFonts.openSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'With 7- Day FREE Trial',
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        flex: 1,
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'AED',
                                    style: GoogleFonts.openSans(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '14',
                                    style: GoogleFonts.openSans(
                                      fontSize: 39,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '99',
                                    style: GoogleFonts.openSans(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Container(
                                    height: 44,
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      '/year',
                                      style: GoogleFonts.openSans(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Billed in 7 Days at \nAED 14.99',
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        flex: 1,
                      ),
                      Icon(Icons.chevron_right_outlined),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '''By signing up, you agree to Locals hub Terms and Conditions and Privacy Policy


Payment will be charged to your Account at confirmation of purchase''',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
