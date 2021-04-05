import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/widgets/custom_input.dart';

class BusinessChangePassword extends StatefulWidget {
  @override
  _BusinessChangePasswordState createState() => _BusinessChangePasswordState();
}

class _BusinessChangePasswordState extends State<BusinessChangePassword> {
  bool _isOldPasswordVisible = true;
  bool _isConfirmPasswordVisible = true;
  bool _isNewPasswordVisible = true;

  toogleOldPasswordVisibility() {
    setState(() {
      _isOldPasswordVisible = !_isOldPasswordVisible;
    });
  }

  toogleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
  }

  toogleNewPasswordVisibility() {
    setState(() {
      _isNewPasswordVisible = !_isNewPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Change Password'),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      children: [
        buildPasswordOutlineInputField(
            'Old Password',
            TextInputType.visiblePassword,
            null,
            _isOldPasswordVisible,
            toogleOldPasswordVisibility),
        SizedBox(
          height: 15,
        ),
        buildPasswordOutlineInputField(
            'New Password',
            TextInputType.visiblePassword,
            null,
            _isNewPasswordVisible,
            toogleNewPasswordVisibility),
        SizedBox(
          height: 15,
        ),
        buildPasswordOutlineInputField(
            'Confirm Password',
            TextInputType.visiblePassword,
            null,
            _isConfirmPasswordVisible,
            toogleConfirmPasswordVisibility),
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
            'Save',
            style: GoogleFonts.openSans(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
