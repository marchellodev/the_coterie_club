import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'dashboard/dashboard.dart';
import 'intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      builder: (_, child) {
        return ScrollConfiguration(
          behavior: BouncingScrollBehavior(),
          child: child,
        );
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}
