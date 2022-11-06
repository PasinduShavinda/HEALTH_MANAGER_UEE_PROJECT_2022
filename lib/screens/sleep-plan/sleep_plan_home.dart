import 'package:flutter/material.dart';

class SleepPlanHOME extends StatefulWidget {
  const SleepPlanHOME({super.key});

  @override
  State<SleepPlanHOME> createState() => _SleepPlanHOMEState();
}

class _SleepPlanHOMEState extends State<SleepPlanHOME> {

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
                  "Sleep Plan Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
    );
  }
}
