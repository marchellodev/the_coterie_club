import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:the_coterie_club/dashboard/profile.dart';

import 'explore.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final pager = PageController();
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pager,
        onPageChanged: (page) {
          setState(() {
            selected = page;
          });
        },
        children: [
          ExplorePage(),
          Center(child: Text('Page 2')),

          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          setState(() {
            pager.animateToPage(val,
                duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
          });
        },
        currentIndex: selected,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.compass), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.users), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.settings), label: 'Profile'),
        ],
      ),
    );
  }
}
