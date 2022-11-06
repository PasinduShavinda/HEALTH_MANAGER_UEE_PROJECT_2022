import 'package:flutter/material.dart';

class BMIHOME extends StatefulWidget {
  const BMIHOME({super.key});

  @override
  State<BMIHOME> createState() => _BMIHOMEState();
}

class _BMIHOMEState extends State<BMIHOME> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Health Manager"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "BMI Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
    );
  }
}
