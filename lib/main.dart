import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import 'dashboard/dashboard.dart';
import 'intro.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox<String>('auth');

  Hive.box<String>('auth').clear();
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
      home: DashboardScreen(),
    );
  }
}
