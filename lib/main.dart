import 'package:flutter/material.dart';
import 'package:health_manager_uee_project_2022/screens/home_page.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Manager',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
