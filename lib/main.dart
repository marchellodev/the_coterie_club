import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:the_coterie_club/profile/change.dart';

import 'dashboard/dashboard.dart';
import 'intro.dart';

String bio;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Coterie Club',
      builder: (_, child) {
        return ScrollConfiguration(
          behavior: BouncingScrollBehavior(),
          child: child,
        );
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: IntroScreen(),
    );
  }
}
