import 'package:flutter/material.dart';

class WorkOutHOME extends StatefulWidget {
  const WorkOutHOME({super.key});

  @override
  State<WorkOutHOME> createState() => _WorkOutHOMEState();
}

class _WorkOutHOMEState extends State<WorkOutHOME> {

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
                  "Work out Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
    );
  }
}
