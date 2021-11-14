import 'package:flutter/material.dart';
import 'package:m_placement_tracker/Screens/LogIn/Login-Admin/login_admin_screen.dart';
import 'package:m_placement_tracker/Screens/LogIn/Login-Student/login_student_screen.dart';
import 'package:m_placement_tracker/Screens/Signup/signup_screen.dart';
import 'package:m_placement_tracker/Screens/Welcome/components/background.dart';
import 'package:m_placement_tracker/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO" + '\n\n' + "mPlacementTracker",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOG IN as Student",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginStudentScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "LOG IN as Admin",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginAdminScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: Colors.red.shade100,
              textColor: Colors.black,
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
