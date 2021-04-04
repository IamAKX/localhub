import 'dart:io';

import 'package:country_code_picker/country_code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/config/static_data.dart';
import 'package:localhub/widgets/custom_input.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _instagramUserName = TextEditingController();
  TextEditingController _emailId = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  TextEditingController _licenseNumber = TextEditingController();

  bool _isPasswordVisible = true;
  bool _isConfirmPasswordVisible = true;
  String _countryCode = '+91';
  List<dynamic> _selectedCategory = [];
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      updateSelectedImage(File(pickedFile.path));
    }
  }

  tooglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  toogleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
  }

  updateCountryCode(CountryCode s) {
    setState(() {
      _countryCode = s.dialCode;
    });
  }

  updateSelectedCategory(List<dynamic> d) {
    setState(() {
      _selectedCategory = d;
    });
  }

  updateSelectedImage(File selectedImage) {
    setState(() {
      _image = selectedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Sign Up',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Hi, Welcome!',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w700,
              fontSize: 35,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Please Sign Up to Continue',
            style: GoogleFonts.openSans(
              fontSize: 18,
              color: HINT_COLOR,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView(
              children: [
                buildInputFieldByType('Instagram Username', TextInputType.name,
                    _instagramUserName),
                SizedBox(
                  height: 10,
                ),
                buildInputFieldByType(
                    'Email Id', TextInputType.emailAddress, _instagramUserName),
                SizedBox(
                  height: 10,
                ),
                buildPhoneInputField('Phone Number', TextInputType.phone,
                    _phoneNumber, updateCountryCode),
                SizedBox(
                  height: 10,
                ),
                buildPasswordInputField(
                    'Password',
                    TextInputType.visiblePassword,
                    _password,
                    _isPasswordVisible,
                    tooglePasswordVisibility),
                SizedBox(
                  height: 10,
                ),
                buildPasswordInputField(
                  'Confirm Password',
                  TextInputType.visiblePassword,
                  _confirmPassword,
                  _isConfirmPasswordVisible,
                  toogleConfirmPasswordVisibility,
                ),
                SizedBox(
                  height: 10,
                ),
                buildCategoryDropdown('Select category', getCategoryDisplayText,
                    updateSelectedCategory),
                SizedBox(
                  height: 10,
                ),
                buildInputFieldByType(
                    'License Number', TextInputType.number, _licenseNumber),
                SizedBox(
                  height: 10,
                ),
                buildImagePickerInput('License Photo', getImage, getFileName),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: BUTTON_BLACK,
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/home', (route) => false);
                  },
                  child: Text(
                    'Next',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String getCategoryDisplayText() {
    if (_selectedCategory.isEmpty)
      return '';
    else
      return _selectedCategory.join(", ");
  }

  String getFileName() {
    if (null == _image)
      return '';
    else
      return _image.path.substring(_image.path.lastIndexOf('/') + 1);
  }
}
