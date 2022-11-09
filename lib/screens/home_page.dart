import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_manager_uee_project_2022/screens/body-weight-tracker/body_weight_tracker_home.dart';
import 'package:health_manager_uee_project_2022/screens/daily-meal-plan/daily_meal_plan_home.dart';
import 'package:health_manager_uee_project_2022/screens/diet-plan/diet_plan_home.dart';
import 'package:health_manager_uee_project_2022/screens/health-hotline/health_hotline_home.dart';
import 'package:health_manager_uee_project_2022/screens/healthy-recipe/healthy_recipe_home.dart';
import 'package:health_manager_uee_project_2022/screens/sleep-plan/sleep_plan_home.dart';
import 'package:health_manager_uee_project_2022/screens/symptoms-recorder/syptom_record_home.dart';
import 'package:health_manager_uee_project_2022/screens/water-drinking-plan/water_drink_home.dart';
import 'package:health_manager_uee_project_2022/screens/work-out-plan/work_out_home.dart';
import 'bmi-calculator/bmi_home.dart';
import 'healthy-recipe/Screens/home/home.dart';

class FlutterVizBottomNavigationBarModel {
  IconData icon;
  String label;

  FlutterVizBottomNavigationBarModel({required this.icon, required this.label});
}

class HomeScreen extends StatelessWidget {
  List<FlutterVizBottomNavigationBarModel> flutterVizBottomNavigationBarItems = [FlutterVizBottomNavigationBarModel(icon:Icons.home,label:"Home"), FlutterVizBottomNavigationBarModel(icon:Icons.account_circle,label:"Account")];

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
      // bottomNavigationBar: BottomNavigationBar(
      //   items: flutterVizBottomNavigationBarItems.map((FlutterVizBottomNavigationBarModel item) {
      //     return BottomNavigationBarItem(
      //       icon: Icon(item.icon),
      //       label: item.label
      //       , );
      //   }).toList(),
      //   backgroundColor: Color(0xffc396e5),
      //   currentIndex: 0,
      //   elevation: 8,
      //   iconSize: 24,
      //   selectedItemColor: Color(0xff3a57e8),
      //   unselectedItemColor: Color(0xff9e9e9e),
      //   selectedFontSize: 14,
      //   unselectedFontSize:14,
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   onTap: (value){},
      // ),
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
                _navigateToDietPlanHome(context);
              },
              color:Color(0xffc396e5),
              elevation:0,
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.zero,
                side:BorderSide(color:Color(0xff808080),width:1),
              ),
              padding:EdgeInsets.all(16),
              child:Text("Diet Plan", style: TextStyle( fontSize:14,
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
              _navigateToDailyMealPlanHome(context);
            },
            color:Color(0xffc396e5),
            elevation:0,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.zero,
              side:BorderSide(color:Color(0xff808080),width:1),
            ),
            padding:EdgeInsets.fromLTRB(18, 16, 16, 16),
            child:Text("Daily Meal Plan", style: TextStyle( fontSize:14,
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
                _navigateToBodyWeightTrackerHome(context);
              },
              color:Color(0xffc396e5),
              elevation:0,
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.zero,
                side:BorderSide(color:Color(0xff808080),width:1),
              ),
              padding:EdgeInsets.all(16),
              child:Text("Body Weight Tracker", style: TextStyle( fontSize:14,
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
              _navigateToBMIHome(context);
            },
            color:Color(0xffc396e5),
            elevation:0,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.zero,
              side:BorderSide(color:Color(0xff808080),width:1),
            ),
            padding:EdgeInsets.all(16),
            child:Text("BMI Calculator", style: TextStyle( fontSize:14,
              fontWeight:FontWeight.w400,
              fontStyle:FontStyle.normal,
            ),),
            textColor:Color(0xff000000),
            height:40,
            minWidth:140,
          ),
          MaterialButton(
            onPressed:(){
              _navigateToHealthRecipeHome(context);
            },
            color:Color(0xffc396e5),
            elevation:0,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.zero,
              side:BorderSide(color:Color(0xff808080),width:1),
            ),
            padding:EdgeInsets.all(16),
            child:Text("Healthy Recipe", style: TextStyle( fontSize:14,
              fontWeight:FontWeight.w400,
              fontStyle:FontStyle.normal,
            ),),
            textColor:Color(0xff000000),
            height:40,
            minWidth:140,
          ),
          MaterialButton(
            onPressed:(){
              _navigateSleepPlanHome(context);
            },
            color:Color(0xffc396e5),
            elevation:0,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.zero,
              side:BorderSide(color:Color(0xff808080),width:1),
            ),
            padding:EdgeInsets.all(16),
            child:Text("Sleep Plan", style: TextStyle( fontSize:14,
              fontWeight:FontWeight.w400,
              fontStyle:FontStyle.normal,
            ),),
            textColor:Color(0xff000000),
            height:40,
            minWidth:140,
          ),
          MaterialButton(
            onPressed:(){
              _navigateToWaterDrinkingPlanHome(context);
            },
            color:Color(0xffc396e5),
            elevation:0,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.zero,
              side:BorderSide(color:Color(0xff808080),width:1),
            ),
            padding:EdgeInsets.all(16),
            child:Text("Water Drinking Plan", style: TextStyle( fontSize:14,
              fontWeight:FontWeight.w400,
              fontStyle:FontStyle.normal,
            ),),
            textColor:Color(0xff000000),
            height:40,
            minWidth:140,
          ),
          MaterialButton(
            onPressed:(){
              _navigateToWorkOutPlanHome(context);
            },
            color:Color(0xffc396e5),
            elevation:0,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.zero,
              side:BorderSide(color:Color(0xff808080),width:1),
            ),
            padding:EdgeInsets.all(16),
            child:Text("Work Out Plan", style: TextStyle( fontSize:14,
              fontWeight:FontWeight.w400,
              fontStyle:FontStyle.normal,
            ),),
            textColor:Color(0xff000000),
            height:40,
            minWidth:140,
          ),
          MaterialButton(
            onPressed:(){
              _navigateToSymptomRecordHome(context);
            },
            color:Color(0xffc396e5),
            elevation:0,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.zero,
              side:BorderSide(color:Color(0xff808080),width:1),
            ),
            padding:EdgeInsets.all(16),
            child:Text("Syptom Record", style: TextStyle( fontSize:14,
              fontWeight:FontWeight.w400,
              fontStyle:FontStyle.normal,
            ),),
            textColor:Color(0xff000000),
            height:40,
            minWidth:140,
          ),
          MaterialButton(
            onPressed:(){
              _navigateToHealthHotlineHome(context);
            },
            color:Color(0xffc396e5),
            elevation:0,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.zero,
              side:BorderSide(color:Color(0xff808080),width:1),
            ),
            padding:EdgeInsets.all(16),
            child:Text("Health Hotline", style: TextStyle( fontSize:14,
              fontWeight:FontWeight.w400,
              fontStyle:FontStyle.normal,
            ),),
            textColor:Color(0xff000000),
            height:40,
            minWidth:140,
          ),
        ],),
    );
  }
  void _navigateToDietPlanHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DietPlanHOME()));
  }

  void _navigateToDailyMealPlanHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DMPHOME()));
  }

  void _navigateToBodyWeightTrackerHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BWTHOME()));
  }

  void _navigateToBMIHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BMIHOME()));
  }

  void _navigateToHealthRecipeHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreenHR()));
  }

  void _navigateSleepPlanHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SleepPlanHOME()));
  }

  void _navigateToWaterDrinkingPlanHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WaterDrinkHOME()));
  }

  void _navigateToWorkOutPlanHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WorkOutHOME()));
  }

  void _navigateToSymptomRecordHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SyptRecordHOME()));
  }

  void _navigateToHealthHotlineHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HealthHotHOME()));
  }
}


