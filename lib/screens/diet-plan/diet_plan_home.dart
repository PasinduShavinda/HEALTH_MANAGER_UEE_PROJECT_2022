import 'package:flutter/material.dart';

class DietPlanHOME extends StatefulWidget {
  const DietPlanHOME({super.key});

  @override
  State<DietPlanHOME> createState() => _DietPlanHOMEState();
}

class _DietPlanHOMEState extends State<DietPlanHOME> {

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
                  "Diet Plan Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
    );
  }
}
