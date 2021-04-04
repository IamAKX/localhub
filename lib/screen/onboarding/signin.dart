import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/widgets/custom_input.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var height, width;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = true;

  tooglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: body(),
    );
  }

  body() {
    return SingleChildScrollView(
      child: Container(
        height: height,
        padding: EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/colud_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Guest',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Sign In',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Please Sign In to Continue',
              style: GoogleFonts.openSans(
                fontSize: 18,
                color: HINT_COLOR,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            buildInputFieldByType(
                'Email Id', TextInputType.emailAddress, _emailController),
            SizedBox(
              height: 10,
            ),
            buildPasswordInputField(
                'Password',
                TextInputType.visiblePassword,
                _passwordController,
                _isPasswordVisible,
                tooglePasswordVisibility),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'FORGET PASSWORD',
                  style: GoogleFonts.openSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.3),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: BUTTON_BLACK,
              onPressed: () {
                if (DateTime.now().minute % 3 == 0)
                  Navigator.of(context).pushNamed('/spinningWheel');
                else
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/home', (route) => false);
              },
              child: Text(
                'Sign In',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                'or',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.asset('assets/images/google_button.png'),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Google',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.asset('assets/images/instagram_button.png'),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Instagram',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: GoogleFonts.openSans(
                    color: BUTTON_BLACK,
                    fontSize: 15,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign Up',
                      style: GoogleFonts.openSans(
                        color: BUTTON_BLACK,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => Navigator.of(context).pushNamed('/signUp'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
