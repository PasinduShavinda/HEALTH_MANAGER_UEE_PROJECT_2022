import 'package:flutter/material.dart';

class BWTHOME extends StatefulWidget {
  const BWTHOME({super.key});

  @override
  State<BWTHOME> createState() => _BWTHOMEState();
}

class _BWTHOMEState extends State<BWTHOME> {

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
                  "Body Weight Tracker Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
    );
  }
}
