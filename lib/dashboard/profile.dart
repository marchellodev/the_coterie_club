import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(26),
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade800.withOpacity(0.8), width: 1.4),
              shape: BoxShape.circle,
            ),
            child: Icon(FeatherIcons.user, size: 48, color: Colors.blue.shade400,),
          ),

          SizedBox(height: 24,),
          Center(child: Text('Mark', style: GoogleFonts.rubik(
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),)),
          Center(child: Text('* bio here *', style: GoogleFonts.rubik(
              fontSize: 24
          ),)),
        ],
      ),
    );
  }
}
