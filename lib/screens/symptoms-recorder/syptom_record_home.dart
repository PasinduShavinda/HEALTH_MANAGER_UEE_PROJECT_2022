import 'package:flutter/material.dart';

class SyptRecordHOME extends StatefulWidget {
  const SyptRecordHOME({super.key});

  @override
  State<SyptRecordHOME> createState() => _SyptRecordHOMEState();
}

class _SyptRecordHOMEState extends State<SyptRecordHOME> {

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
                  "Syptom Record Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
    );
  }
}
