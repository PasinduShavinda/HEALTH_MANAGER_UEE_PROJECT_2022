import 'package:flutter/material.dart';
import 'package:health_manager_uee_project_2022/screens/daily-meal-plan/daily_meal_plan_lunch.dart';
import 'daily_meal_plan_breakfast.dart';
import 'daily_meal_plan_dinner.dart';

class DMPHOME extends StatefulWidget {
  const DMPHOME({super.key});

  @override
  State<DMPHOME> createState() => _DMPHOMEState();
}

class _DMPHOMEState extends State<DMPHOME> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar:
      AppBar(
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
      body:
      Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisSize:MainAxisSize.max,
        children: [
          Padding(
            padding:EdgeInsets.all(10),
            child:Align(
              alignment:Alignment(0.0, -0.0),
              child:///***If you have exported images you must have to copy those images in assets/images directory.
              Image(
                image:NetworkImage("https://picsum.photos/250?image=9"),
                height:100,
                width:140,
                fit:BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.fromLTRB(0, 19, 0, 0),
            child:MaterialButton(
              onPressed:(){
                _navigateToBreakfast(context);
              },
              color:Color(0xffc396e5),
              elevation:0,
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.zero,
                side:BorderSide(color:Color(0xff808080),width:1),
              ),
              padding:EdgeInsets.all(16),
              child:Text("Add Breakfast", style: TextStyle( fontSize:14,
                fontWeight:FontWeight.w400,
                fontStyle:FontStyle.normal,
              ),),
              textColor:Color(0xff000000),
              height:40,
              minWidth:140,
            ),
          ),

          MaterialButton(
            onPressed:(){
              _navigateToLunch(context);
            },
            color:Color(0xffc396e5),
            elevation:0,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.zero,
              side:BorderSide(color:Color(0xff808080),width:1),
            ),
            padding:EdgeInsets.fromLTRB(18, 16, 16, 16),
            child:Text("Add Lunch", style: TextStyle( fontSize:14,
              fontWeight:FontWeight.w400,
              fontStyle:FontStyle.normal,
            ),),
            textColor:Color(0xff000000),
            height:40,
            minWidth:140,
          ),
          Align(
            alignment:Alignment(0.0, -0.2),
            child:MaterialButton(
              onPressed:(){
                 _navigateToDinner(context);
              },
              color:Color(0xffc396e5),
              elevation:0,
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.zero,
                side:BorderSide(color:Color(0xff808080),width:1),
              ),
              padding:EdgeInsets.all(16),
              child:Text("Add dinner", style: TextStyle( fontSize:14,
                fontWeight:FontWeight.w400,
                fontStyle:FontStyle.normal,
              ),),
              textColor:Color(0xff000000),
              height:40,
              minWidth:140,
            ),
          ),
        ],),
    );
  }
  void _navigateToBreakfast(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MealBreakfast()));
  }
  void _navigateToLunch(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MealLunch()));
  }
  void _navigateToDinner(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MealDinner()));
  }
}

