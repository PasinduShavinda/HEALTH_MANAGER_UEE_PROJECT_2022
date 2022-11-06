import 'package:flutter/material.dart';

class WaterDrinkHOME extends StatefulWidget {
  const WaterDrinkHOME({super.key});

  @override
  State<WaterDrinkHOME> createState() => _WaterDrinkHOMEState();
}

class _WaterDrinkHOMEState extends State<WaterDrinkHOME> {

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
                  "Water Drinking Plan Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
    );
  }
}
