import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_p/components/already_have_an_account_check.dart';
import 'package:login_p/components/rounded_button.dart';
import 'package:login_p/components/rounded_input_field.dart';
import 'package:login_p/components/rounded_password_field.dart';
// ignore: unused_import
import 'package:login_p/constans.dart';
import 'package:login_p/screens/LogIn/Login_screen.dart';
import 'package:login_p/screens/SignUp/components/background.dart';
import 'package:login_p/screens/SignUp/components/or_divider.dart';
import 'package:login_p/screens/SignUp/components/social_icon.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/Icon/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "ایمیل خود را وارد کنید",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SignUp",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/Icon/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/Icon/google-plus.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/Icon/twitter.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
