import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:the_coterie_club/dashboard/dashboard.dart';
import 'package:the_coterie_club/register.dart';
import 'package:the_coterie_club/service.dart';
// I/flutter ( 4616): {userId: 1350487795323758, token: EAAW2s18xZAeQBABu0WlEUMFaeBtuoPTtIfn92ZAzJharxvA99Gtsay4dYxciX9Gpfit7cKSV5N0QdKiY7iud2FaWkRA3bcRiL8IFZCQzzwQWhurCqBMaoWzcGM6hDoYwrMP2msTFHmZA5NRobCmbcWLELSOheaFAsMhzqBZB0hqEitzDEDLeWLcZAZCAz75fcKGyOuv5FozPKFNXYlmvUmgO9N1f49cGygM3bCsHZBuZC4QZDZD, expires: 2021-05-18T22:13:06.985, lastRefresh: 2021-03-20T16:01:06.985, applicationId: 1608256396027364, graphDomain: null, isExpired: false, grantedPermissions: [public_profile, email], declinedPermissions: []}

class IntroScreen extends StatelessWidget {
  Future<void> _login(BuildContext context) async {
    try {
      // by default the login method has the next permissions ['email','public_profile']
      AccessToken accessToken = (await FacebookAuth.instance.login());
      print(accessToken.toJson());
      // get the user data
      // final userData = await FacebookAuth.instance.getUserData();

      final res = await login(accessToken.userId, accessToken.token);


      if (res == 'ok') {

        Hive.box<String>('auth').put('token', accessToken.token);
        Hive.box<String>('auth').put('id', accessToken.userId);


        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => DashboardScreen()));
      } else if (res == 'show') {

        Hive.box<String>('auth').put('token', accessToken.token);
        Hive.box<String>('auth').put('id', accessToken.userId);


        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => RegisterScreen()));
      }
    } on FacebookAuthException catch (e) {
      switch (e.errorCode) {
        case FacebookAuthErrorCode.OPERATION_IN_PROGRESS:
          print("You have a previous login operation in progress");
          break;
        case FacebookAuthErrorCode.CANCELLED:
          print("login cancelled");
          break;
        case FacebookAuthErrorCode.FAILED:
          print("login failed");
          break;
      }
    }
  }

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
                      _login(context);
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
