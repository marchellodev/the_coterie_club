import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_coterie_club/profile/change.dart';

import '../main.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(32),
      children: [
     
        SafeArea(
          child: Center(
              child: OutlinedButton(
                  onPressed: () {

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          FeatherIcons.plus,
                          size: 18,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Create',
                          style: GoogleFonts.montserrat(fontSize: 16),
                        ),
                      ],
                    ),
                  ))),
        ),
      ],
    );
  }
}
