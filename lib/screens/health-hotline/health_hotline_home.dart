import 'package:flutter/material.dart';

class HealthHotHOME extends StatefulWidget {
  const HealthHotHOME({super.key});

  @override
  State<HealthHotHOME> createState() => _HealthHotHOMEState();
}

class _HealthHotHOMEState extends State<HealthHotHOME> {

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
                  "Health Hotline Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
    );
  }
}
