import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:localhub/widgets/custom_input.dart';

class BusinessMyProfile extends StatefulWidget {
  @override
  _BusinessMyProfileState createState() => _BusinessMyProfileState();
}

class _BusinessMyProfileState extends State<BusinessMyProfile> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      updateSelectedImage(File(pickedFile.path));
    }
  }

  updateSelectedImage(File selectedImage) {
    setState(() {
      _image = selectedImage;
    });
  }

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
                'assets/images/sultan_sweets.png',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            buildBorderedInputFieldByType(
                'Your Name', TextInputType.name, null),
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
                'License number', TextInputType.text, null),
            SizedBox(
              height: 10,
            ),
            buildImagePickerInputWithFloatingLabel(
                'License Photo', getImage, getFileName),
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

  String getFileName() {
    if (null == _image)
      return '';
    else
      return _image.path.substring(_image.path.lastIndexOf('/') + 1);
  }
}
