import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/widgets/custom_input.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('My Profile'),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body() {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/user_dummy_1.png',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            buildBorderedInputFieldByType(
                'Instagram User name', TextInputType.name, null),
            SizedBox(
              height: 10,
            ),
            buildBorderedInputFieldByType(
                'Email Id', TextInputType.emailAddress, null),
            SizedBox(
              height: 10,
            ),
            buildBorderedInputFieldByType(
                'Phone Number', TextInputType.phone, null),
            SizedBox(
              height: 10,
            ),
            buildBorderedInputFieldByType(
                'Date of Birth', TextInputType.datetime, null),
            SizedBox(
              height: 10,
            ),
            buildBorderedInputFieldByType('Address', TextInputType.text, null),
            SizedBox(
              height: 10,
            ),
            buildBorderedInputFieldByTypeWithSuffixIcon(
                'Street/Area', TextInputType.text, null, Icons.gps_fixed, null),
            SizedBox(
              height: 10,
            ),
            buildBorderedInputFieldByType(
                'Building/House No', TextInputType.number, null),
            SizedBox(
              height: 10,
            ),
            buildBorderedInputFieldByType('City', TextInputType.text, null),
            SizedBox(
              height: 10,
            ),
            buildBorderedInputFieldByType('Country', TextInputType.text, null),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.grey[500],
              indent: 10,
              endIndent: 10,
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Edit Profile',
                style: GoogleFonts.openSans(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
