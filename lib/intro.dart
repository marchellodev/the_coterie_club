import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_coterie_club/register.dart';

class IntroScreen extends StatelessWidget {
  // Future<void> _login() async {
  //   try {
  //     // by default the login method has the next permissions ['email','public_profile']
  //     AccessToken accessToken = (await FacebookAuth.instance.login());
  //     print(accessToken.toJson());
  //     // get the user data
  //     final userData = await FacebookAuth.instance.getUserData();
  //     userData['name'];
  //     print(userData);
  //   } on FacebookAuthException catch (e) {
  //     switch (e.errorCode) {
  //       case FacebookAuthErrorCode.OPERATION_IN_PROGRESS:
  //         print("You have a previous login operation in progress");
  //         break;
  //       case FacebookAuthErrorCode.CANCELLED:
  //         print("login cancelled");
  //         break;
  //       case FacebookAuthErrorCode.FAILED:
  //         print("login failed");
  //         break;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Spacer(),
            Hero(
              tag: 'header',
              child: Material(
                child: Text(
                  'The Coterie Club',
                  style: GoogleFonts.rubik(fontSize: 26, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Spacer(),
            Spacer(),
            Center(
                child: OutlinedButton(
                    onPressed: () {
                      // _login();
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => RegisterScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Log In via Facebook',
                        style: GoogleFonts.montserrat(fontSize: 18),
                      ),
                    ))),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
