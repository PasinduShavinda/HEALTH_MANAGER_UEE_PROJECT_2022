///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import '../healthy-recipe/components/bottom_nav.dart';
import 'syptom_history.dart';

class OtherSymptomsPage extends StatelessWidget {
  double symptomlevel=0;
  String symptom="";
  final CollectionReference _symptoms =
  FirebaseFirestore.instance.collection('symptoms');

  final TextEditingController _symptomController = TextEditingController();

  void _navigateToSymptomHistory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SymptomsHistory()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              MaterialButton(
                onPressed: () {},
                color: Color(0xffc396e5),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Color(0xff808080), width: 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "Symptoms",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                textColor: Color(0xff000000),
                height: 40,
                minWidth: 190,
              ),
              MaterialButton(
                onPressed: () {
                  _navigateToSymptomHistory(context);
                },
                color: Color(0xffb4b0b7),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Color(0xff808080), width: 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "History",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                textColor: Color(0xff000000),
                height: 40,
                minWidth: 190,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
            child: Text(
              "Other Symptoms",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 22,
                color: Color(0xff000000),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: TextField(
              controller: _symptomController,
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 18,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0xffc396e5), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0xffc396e5), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0xffc396e5), width: 1),
                ),
                hintText: "Other Symptom",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xffb4b0b7),
                ),
                filled: true,

                fillColor: Color(0xfff2f2f3),
                isDense: false,
                contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
            child: RatingBar.builder(

              unratedColor: Color(0xfff6f5f5),
              itemBuilder: (context, index) =>
                  Icon(Icons.star, color: Color(0xffffc107)),
              itemCount: 5,
              itemSize: 40,
              direction: Axis.horizontal,
              allowHalfRating: false,
              onRatingUpdate: (value) {
               symptomlevel=value;

              },
            ),
          ),
          MaterialButton(
            onPressed: ()async {
              if (symptomlevel != null) {
                final String symptomt =_symptomController.text;
                await _symptoms.add({
                  "symptom":symptomt,
                  "symptomlevel": symptomlevel,
                  'timestamp' : Timestamp.now()
                });

                Navigator.of(context).pop();
              }
            },
            color: Color(0xffc396e5),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Submit",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
        ],
      ),
    );
  }
}
