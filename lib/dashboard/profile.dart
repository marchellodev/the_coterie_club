import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_coterie_club/profile/change.dart';

import '../main.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(32),
      children: [
        SafeArea(
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade800.withOpacity(0.8), width: 1.4),
              shape: BoxShape.circle,
            ),
            child: Icon(
              FeatherIcons.user,
              size: 48,
              color: Colors.blue.shade400,
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Center(
            child: Text(
          'Mark',
          style: GoogleFonts.rubik(fontSize: 24, fontWeight: FontWeight.w500),
        )),
        SizedBox(
          height: 6,
        ),
        Center(
            child: Text(
          bio,
          style: GoogleFonts.rubik(
            fontSize: 18,
            color: Colors.grey.shade700,
          ),
        )),
        SizedBox(
          height: 28,
        ),
        Wrap(
          spacing: 10,
          children: [
            for (final el in interests)
              ChoiceChip(
                label: Text(el),
                onSelected: (val) {},
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
          height: 28,
        ),
        Center(
            child: Text(
          'Three things you can talk about forever',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w300,
          ),
        )),
        SizedBox(
          height: 28,
        ),
        Text(
          '1. ${things[0]}',
          style: GoogleFonts.rubik(
            fontSize: 18,
            color: Colors.grey.shade900,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          '2. ${things[1]}',
          style: GoogleFonts.rubik(
            fontSize: 18,
            color: Colors.grey.shade900,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          '3. ${things[2]}',
          style: GoogleFonts.rubik(
            fontSize: 18,
            color: Colors.grey.shade900,
          ),
        ),
        SizedBox(
          height: 28,
        ),
        Center(
            child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ChangeProfileScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        FeatherIcons.edit2,
                        size: 18,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Edit',
                        style: GoogleFonts.montserrat(fontSize: 16),
                      ),
                    ],
                  ),
                ))),
      ],
    );
  }
}
