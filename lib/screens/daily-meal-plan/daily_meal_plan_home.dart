import 'package:flutter/material.dart';

class DMPHOME extends StatefulWidget {
  const DMPHOME({super.key});

  @override
  State<DMPHOME> createState() => _DMPHOMEState();
}

class _DMPHOMEState extends State<DMPHOME> {

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
                  "Daily Meal Plan Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
    );
  }
}
