import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_coterie_club/dashboard/dashboard.dart';

import '../main.dart';

class ChangeProfileScreen extends StatefulWidget {
  @override
  _ChangeProfileScreenState createState() => _ChangeProfileScreenState();
}

class _ChangeProfileScreenState extends State<ChangeProfileScreen> {
  var allInterests = <String>[
    'Reading',
    'Music',
    'Cooking',
    'Programming',
    'Art',
    'Video games',
    'Technology',
    'Movies',
    'Animals',
    'Boardgames',
    'Dancing',
    'Volunteering',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 38, horizontal: 24),
          children: [
            Stack(
              children: [
                Transform.translate(
                  offset: Offset(-10, -10),
                  child: IconButton(
                      icon: Icon(FeatherIcons.chevronLeft),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }
                  ),
                ),
                Center(
                  child: Hero(
                    tag: 'header',
                    child: Material(
                      child: Text(
                        'Setting up the profile',
                        style: GoogleFonts.rubik(fontSize: 26),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 36,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Bio',
              ),
              onChanged: (e) {
                bio = e;
              },
              controller: TextEditingController()
                ..text = bio,
              minLines: 2,
              maxLines: 2,
            ),
            SizedBox(
              height: 38,
            ),
            Text(
              'What are your 5 biggest interests?',
              style: GoogleFonts.rubik(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 10,
              children: [
                for (final el in allInterests)
                  ChoiceChip(
                    label: Text(el),
                    onSelected: (val) {
                      setState(() {
                        if (interests.contains(el)) {
                          interests.remove(el);
                        } else {
                          interests.add(el);
                        }
                      });
                    },
                    labelStyle: GoogleFonts.montserrat(),
                    backgroundColor: Colors.transparent,
                    selected: interests.contains(el),
                    selectedColor: Colors.blue.shade50,
                    elevation: 0,
                    pressElevation: 0,
                    shadowColor: Colors.transparent,
                    selectedShadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(color: interests.contains(el) ? Colors.blue.shade100 : Colors.grey.shade200, width: 1.8)),
                  )
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'What are the 3 things you can talk about forever?',
              style: GoogleFonts.rubik(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              onChanged: (e) {
                things[0] = e;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'The first thing',
              ),
              controller: TextEditingController()
                ..text = things[0],
            ),
            SizedBox(
              height: 14,
            ),
            TextFormField(
              onChanged: (e) {
                things[1] = e;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'The second thing',
              ),
              controller: TextEditingController()
                ..text = things[1],
            ),
            SizedBox(
              height: 14,
            ),
            TextFormField(
              onChanged: (e) {
                things[2] = e;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'The third thing',
              ),
              controller: TextEditingController()
                ..text = things[2],
            ),
            SizedBox(
              height: 26,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    if (editing) {
                      Navigator.of(context).pop();
                    } else {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => DashboardScreen()));
                      editing = true;
                    }
                  },
                  child: Text(
                    'Save',
                    style: GoogleFonts.montserrat(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
