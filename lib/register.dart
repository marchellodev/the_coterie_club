import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_coterie_club/profile/change.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String sex;
  String country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 38, horizontal: 24),

          children: [
            Center(
              child: Hero(
                tag: 'header',
                child: Material(
                  child: Text(
                    'Some finishing touches',
                    style: GoogleFonts.rubik(fontSize: 26),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            DropdownButtonFormField<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Text('Kazakhstan'),
                  value: 'Kazakhstan',
                ),
                DropdownMenuItem<String>(
                  child: Text('Ukraine'),
                  value: 'Ukraine',
                ),
                DropdownMenuItem<String>(
                  child: Text('Poland'),
                  value: 'Poland',
                ),
              ],
              value: country,
              onChanged: (val) {
                setState(() {
                  country = val;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Country',
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'City',
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Age',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 24,
            ),
            DropdownButtonFormField<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Text('Male'),
                  value: 'Male',
                ),
                DropdownMenuItem<String>(
                  child: Text('Female'),
                  value: 'Female',
                ),
                DropdownMenuItem<String>(
                  child: Text('Non-binary'),
                  value: 'Non-binary',
                ),
              ],
              value: sex,
              onChanged: (val) {
                setState(() {
                  sex = val;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Sex',
              ),
            ),
            SizedBox(
              height: 36,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (_) => ChangeProfileScreen()));
                },
                child: Text(
                  'Continue',
                  style: GoogleFonts.montserrat(),
                )),
          ],
        ),
      ),
    );
  }
}

/*
Stuff to store:
> Age
> Sex
> Country
> City
> Five main interests
> Three things you can talk about forever
 */
