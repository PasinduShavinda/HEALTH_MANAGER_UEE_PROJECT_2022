import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'diet_plan_breakfast.dart';
import 'diet_plan_dinner.dart';
import 'diet_plan_lunch.dart';

class DietPlanHOME extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
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
      body:
      ListView(
        scrollDirection: Axis.vertical,
        padding:EdgeInsets.all(8),
        shrinkWrap:true,
        physics:ClampingScrollPhysics(),
        children:[
          Card(
            margin:EdgeInsets.all(4),
            color:Color(0xffffffff),
            shadowColor:Color(0xff000000),
            elevation:4,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(12.0),
            ),
            child:

            Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisSize:MainAxisSize.max,
              children: [
                Padding(
                  padding:EdgeInsets.all(16),
                  child:
                  Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisSize:MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius:BorderRadius.circular(12.0),
                        child:
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image:NetworkImage("https://image.freepik.com/free-photo/top-view-delicious-noodles-concept_23-2148773775.jpg"),
                          height:140,
                          width:MediaQuery.of(context).size.width,
                          fit:BoxFit.cover,
                        ),
                      ),

                    ],),),
                Container(
                  alignment:Alignment.center,
                  margin:EdgeInsets.all(0),
                  padding:EdgeInsets.all(0),
                  width:MediaQuery.of(context).size.width,
                  height:40,
                  decoration: BoxDecoration(
                    color:Color(0xff3a57e8),
                    shape:BoxShape.rectangle,
                    borderRadius:BorderRadius.only(bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
                    border:Border.all(color:Color(0x4d9e9e9e),width:1),
                  ),
                  child:
                  Text(
                    "View More",
                    textAlign: TextAlign.start,
                    overflow:TextOverflow.clip,
                    style:TextStyle(
                      fontWeight:FontWeight.w700,
                      fontStyle:FontStyle.normal,
                      fontSize:16,
                      color:Color(0xffffffff),
                    ),
                  ),
                ),
              ],),
          ),

          Card(
            margin:EdgeInsets.all(4),
            color:Color(0xffffffff),
            shadowColor:Color(0xff000000),
            elevation:4,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(12.0),
            ),
            child:

            Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisSize:MainAxisSize.max,
              children: [
                Padding(
                  padding:EdgeInsets.all(16),
                  child:
                  Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisSize:MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius:BorderRadius.circular(12.0),
                        child:
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image:NetworkImage("https://image.freepik.com/free-photo/top-view-delicious-noodles-concept_23-2148773775.jpg"),
                          height:140,
                          width:MediaQuery.of(context).size.width,
                          fit:BoxFit.cover,
                        ),
                      ),

                    ],),),
                Container(
                  alignment:Alignment.center,
                  margin:EdgeInsets.all(0),
                  padding:EdgeInsets.all(0),
                  width:MediaQuery.of(context).size.width,
                  height:40,
                  decoration: BoxDecoration(
                    color:Color(0xff3a57e8),
                    shape:BoxShape.rectangle,
                    borderRadius:BorderRadius.only(bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
                    border:Border.all(color:Color(0x4d9e9e9e),width:1),
                  ),
                  child:
                  Text(
                    "View More",
                    textAlign: TextAlign.start,
                    overflow:TextOverflow.clip,
                    style:TextStyle(
                      fontWeight:FontWeight.w700,
                      fontStyle:FontStyle.normal,
                      fontSize:16,
                      color:Color(0xffffffff),
                    ),
                  ),
                ),
              ],),
          ),

          Card(
            margin:EdgeInsets.all(4),
            color:Color(0xffffffff),
            shadowColor:Color(0xff000000),
            elevation:4,
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(12.0),
            ),
            child:

            Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisSize:MainAxisSize.max,
              children: [
                Padding(
                  padding:EdgeInsets.all(16),
                  child:
                  Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisSize:MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius:BorderRadius.circular(12.0),
                        child:
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image:NetworkImage("https://image.freepik.com/free-photo/top-view-delicious-noodles-concept_23-2148773775.jpg"),
                          height:140,
                          width:MediaQuery.of(context).size.width,
                          fit:BoxFit.cover,
                        ),
                      ),

                    ],),),
                Container(
                  alignment:Alignment.center,
                  margin:EdgeInsets.all(0),
                  padding:EdgeInsets.all(0),
                  width:MediaQuery.of(context).size.width,
                  height:40,
                  decoration: BoxDecoration(
                    color:Color(0xff3a57e8),
                    shape:BoxShape.rectangle,
                    borderRadius:BorderRadius.only(bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
                    border:Border.all(color:Color(0x4d9e9e9e),width:1),
                  ),
                  child:
                  Text(
                    "View More",
                    textAlign: TextAlign.start,
                    overflow:TextOverflow.clip,
                    style:TextStyle(
                      fontWeight:FontWeight.w700,
                      fontStyle:FontStyle.normal,
                      fontSize:16,
                      color:Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
    ;}
}




// class DietPlanHOME extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffffffff),
//       appBar:
//       AppBar(
//         elevation:4,
//         centerTitle:false,
//         automaticallyImplyLeading: false,
//         backgroundColor:Color(0xffc396e5),
//         shape:RoundedRectangleBorder(
//           borderRadius:BorderRadius.zero,
//         ),
//
//         title:Text(
//           "Health Manager",
//           style:TextStyle(
//             fontWeight:FontWeight.w800,
//             fontStyle:FontStyle.normal,
//             fontSize:17,
//             color:Color(0xffffffff),
//           ),
//         ),
//       ),
//       body:
//       Column(
//         mainAxisAlignment:MainAxisAlignment.start,
//         crossAxisAlignment:CrossAxisAlignment.center,
//         mainAxisSize:MainAxisSize.max,
//         children: [
//           Padding(
//             padding:EdgeInsets.all(10),
//             child:Align(
//               alignment:Alignment(0.0, -0.0),
//               child:///***If you have exported images you must have to copy those images in assets/images directory.
//               Image(
//                 image:NetworkImage("https://picsum.photos/250?image=9"),
//                 height:100,
//                 width:140,
//                 fit:BoxFit.cover,
//               ),
//             ),
//           ),
//           Padding(
//             padding:EdgeInsets.fromLTRB(0, 19, 0, 0),
//             child:MaterialButton(
//               onPressed:(){
//                 _navigateToBreakfast(context);
//               },
//               color:Color(0xffc396e5),
//               elevation:0,
//               shape:RoundedRectangleBorder(
//                 borderRadius:BorderRadius.zero,
//                 side:BorderSide(color:Color(0xff808080),width:1),
//               ),
//               padding:EdgeInsets.all(16),
//               child:Text("Add Breakfast", style: TextStyle( fontSize:14,
//                 fontWeight:FontWeight.w400,
//                 fontStyle:FontStyle.normal,
//               ),),
//               textColor:Color(0xff000000),
//               height:40,
//               minWidth:140,
//             ),
//           ),
//
//           MaterialButton(
//             onPressed:(){
//               _navigateToLunch(context);
//             },
//             color:Color(0xffc396e5),
//             elevation:0,
//             shape:RoundedRectangleBorder(
//               borderRadius:BorderRadius.zero,
//               side:BorderSide(color:Color(0xff808080),width:1),
//             ),
//             padding:EdgeInsets.fromLTRB(18, 16, 16, 16),
//             child:Text("Add Lunch", style: TextStyle( fontSize:14,
//               fontWeight:FontWeight.w400,
//               fontStyle:FontStyle.normal,
//             ),),
//             textColor:Color(0xff000000),
//             height:40,
//             minWidth:140,
//           ),
//           Align(
//             alignment:Alignment(0.0, -0.2),
//             child:MaterialButton(
//               onPressed:(){
//                 _navigateToDinner(context);
//               },
//               color:Color(0xffc396e5),
//               elevation:0,
//               shape:RoundedRectangleBorder(
//                 borderRadius:BorderRadius.zero,
//                 side:BorderSide(color:Color(0xff808080),width:1),
//               ),
//               padding:EdgeInsets.all(16),
//               child:Text("Add dinner", style: TextStyle( fontSize:14,
//                 fontWeight:FontWeight.w400,
//                 fontStyle:FontStyle.normal,
//               ),),
//               textColor:Color(0xff000000),
//               height:40,
//               minWidth:140,
//             ),
//           ),
//         ],),
//     );
//   }
//   void _navigateToBreakfast(BuildContext context) {
//     Navigator.of(context).push(MaterialPageRoute(builder: (context) => DietBreakfast()));
//   }
//
//   void _navigateToLunch(BuildContext context) {
//     Navigator.of(context).push(MaterialPageRoute(builder: (context) => DietLunch()));
//   }
//
//   void _navigateToDinner(BuildContext context) {
//     Navigator.of(context).push(MaterialPageRoute(builder: (context) => DietDinner()));
//   }
//
// }


