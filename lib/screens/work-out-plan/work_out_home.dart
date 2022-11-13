import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../healthy-recipe/components/bottom_nav.dart';
import 'dart:io';

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
        bottomNavigationBar: BottomNavBar(),
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


//Work Out Splash Screen
class WorkOutSplash extends StatefulWidget {
  const WorkOutSplash({Key? key}) : super(key: key);

  @override
  State<WorkOutSplash> createState() => _WorkOutSplashState();
}

class _WorkOutSplashState extends State<WorkOutSplash> {
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WorkOutHOME()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc396e5),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/heart.png', height: 130,),
            const SizedBox(height: 30,),
            if(Platform.isIOS)
              const CupertinoActivityIndicator(
                radius: 15,
              )
            else
              const CircularProgressIndicator(
                color: Colors.white,
              )
          ],
        ),
      ),
    );
  }
}
