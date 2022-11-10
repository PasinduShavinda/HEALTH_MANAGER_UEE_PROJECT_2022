///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'syptom_history.dart';

class SkinSymptomsPage extends StatelessWidget {
  final CollectionReference _symptoms =
  FirebaseFirestore.instance.collection('symptoms');

  double symptomlevel=0;
  String symptom="";
  void _navigateToSymptomHistory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SymptomsHistory()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar:  AppBar(
        title: Text("Health Manager"),
        backgroundColor:Color(0xffc396e5),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(

            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.zero,
              shrinkWrap: false,
              physics: ScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child:  MaterialButton(
                          onPressed: () async {


                          },
                          color: Color(0xffc396e5),
                          elevation: 0,

                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Text(
                            "Symptoms",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          textColor: Color(0xff000000),
                          height: 40,
                          minWidth: 190,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child:  MaterialButton(
                          onPressed: () async {
                            _navigateToSymptomHistory(context);

                          },
                          color: Color(0xffb4b0b7),
                          elevation: 0,

                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Text(
                            "History",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          textColor: Color(0xff000000),
                          height: 40,
                          minWidth: 190,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(90, 20, 20, 60),
                  child: Text(
                    "Skin Symptoms",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 25,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 100, 10),
                        child: Text(
                          "Acne",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: RatingBar.builder(
                          initialRating: 0,
                          unratedColor: Color(0xffece5e5),
                          itemBuilder: (context, index) =>
                              Icon(Icons.star, color: Color(0xffffc107)),
                          itemCount: 5,
                          itemSize: 30,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          onRatingUpdate: (value) {
                            if(value>0){
                              symptomlevel=value;
                              symptom="Acne";

                            }


                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 90, 0),
                        child: Text(
                          "Blister",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: RatingBar.builder(
                          initialRating: 0,
                          unratedColor: Color(0xffece5e5),
                          itemBuilder: (context, index) =>
                              Icon(Icons.star, color: Color(0xffffc107)),
                          itemCount: 5,
                          itemSize: 30,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          onRatingUpdate: (value) {
                            if(value>0){
                              symptomlevel=value;
                              symptom="Blister";

                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 80, 0),
                        child: Text(
                          "Rashes",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: RatingBar.builder(
                          initialRating: 0,
                          unratedColor: Color(0xffece5e5),
                          itemBuilder: (context, index) =>
                              Icon(Icons.star, color: Color(0xffffc107)),
                          itemCount: 5,
                          itemSize: 30,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          onRatingUpdate: (value) {
                            if(value>0){
                              symptomlevel=value;
                              symptom="Rashes";

                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 40, 0),
                        child: Text(
                          "Peeling skin",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 0,
                        unratedColor: Color(0xffece5e5),
                        itemBuilder: (context, index) =>
                            Icon(Icons.star, color: Color(0xffffc107)),
                        itemCount: 5,
                        itemSize: 30,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        onRatingUpdate: (value) {
                          if(value>0){
                            symptomlevel=value;
                            symptom="Peeling skin";

                          }
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 20, 88, 0),
                  child: MaterialButton(
                    onPressed: () async {
                      if (symptomlevel != null) {
                        await _symptoms.add({
                          "symptom": symptom,
                          "symptomlevel": symptomlevel,
                          'timestamp' : Timestamp.now()
                        });

                        Navigator.of(context).pop();
                      }

                    },
                    color: Color(0xffc396e5),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Color(0xff808080), width: 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    textColor: Color(0xff000000),
                    height: 40,
                    minWidth: 140,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
