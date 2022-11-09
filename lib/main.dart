import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:health_manager_uee_project_2022/screens/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
