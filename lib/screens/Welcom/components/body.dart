import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_p/components/rounded_button.dart';
import 'package:login_p/constans.dart';
import 'package:login_p/screens/LogIn/Login_screen.dart';
import 'package:login_p/screens/SignUp/signup_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //this size provide us total height and width of our screen
    // ignore: missing_required_param
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "welcom",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              "assets/Icon/chat.svg",
              height: size.height * 0.5,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
              text: "LogIn",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
              text: "SignUp",
              color: kPrimaryLightColor,
              textcolor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
