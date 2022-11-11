import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WorkOutHOME extends StatefulWidget {
  const WorkOutHOME({super.key});

  @override
  State<WorkOutHOME> createState() => _WorkOutHOMEState();
}

class _WorkOutHOMEState extends State<WorkOutHOME> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
          leading: IconButton(
              icon: SvgPicture.asset('assets/icons/back.svg'),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
          elevation:4,
          centerTitle:false,
          automaticallyImplyLeading: false,
          backgroundColor:Color(0xffc396e5),
          shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.zero,
          ),
          title:Text(
            "Health Manager",
            style:TextStyle(
              fontWeight:FontWeight.w800,
              fontStyle:FontStyle.normal,
              fontSize:17,
              color:Color(0xffffffff),
            ),
          ),
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
