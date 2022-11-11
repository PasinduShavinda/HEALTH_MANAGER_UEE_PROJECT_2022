import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../healthy-recipe/components/bottom_nav.dart';


class SymptomsHistory extends StatefulWidget {
  const SymptomsHistory({Key? key}) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<SymptomsHistory> {

  double ui=0;
// text fields' controllers
  final TextEditingController _symptomsController = TextEditingController();
  final TextEditingController _symptomsDateController = TextEditingController();


  final CollectionReference _symptoms =
  FirebaseFirestore.instance.collection('symptoms');


  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {

      _symptomsController.text = documentSnapshot['symptom'];
      _symptomsDateController.text  =  documentSnapshot['timestamp'].toString();


    }

    await showModalBottomSheet(

        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {

          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_symptomsDateController.text.toString()),

                TextField(
                  controller: _symptomsController,
                  decoration: const InputDecoration(labelText: 'symptom'),
                ),


                const SizedBox(
                  height: 20,
                ),
                RatingBar.builder(

                  initialRating: (0),
                  unratedColor: Color(0xffece5e5),
                  itemBuilder: (context, index) =>
                      Icon(Icons.star, color: Color(0xffffc107)),
                  itemCount: 5,
                  itemSize: 30,
                  direction: Axis.horizontal,
                  allowHalfRating: true,

                  onRatingUpdate: (value) {

                 ui=value;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(

                  child: const Text( 'Update'),

                  onPressed: () async {
                    final String symptom = _symptomsController.text;
                    final String date =_symptomsDateController.text;
                    final double? symptomlevel =ui;
                    if (symptomlevel != null) {

                      await _symptoms
                          .doc(documentSnapshot!.id)
                          .update({"symptom": symptom, "symptomlevel": symptomlevel,"timestamp":date});
                      _symptomsController.text = '';
                      _symptomsDateController.text = '';
                      Navigator.of(context).pop();
                    }
                  },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffc396e5),
                        textStyle: TextStyle(
                            ))
                )
              ],
            ),
          );
        });
  }

  Future<void> _delete(String productId) async {
    await _symptoms.doc(productId).delete();

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('You have successfully deleted a product')));
  }

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
        body:
        StreamBuilder(

          stream: _symptoms.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                  streamSnapshot.data!.docs[index];
                  return Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Color(0xffc396e5)
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                       clipBehavior: Clip.hardEdge,

                    child: ListTile(
                      title: Text(documentSnapshot['symptom'] ),

                      subtitle:  RatingBar.builder(

                        initialRating: (documentSnapshot['symptomlevel']),
                        unratedColor: Color(0xffece5e5),
                        itemBuilder: (context, index) =>
                            Icon(Icons.star, color: Color(0xffffc107)),
                        itemCount: 5,
                        itemSize: 30,
                        direction: Axis.horizontal,
                        allowHalfRating: true,

                        onRatingUpdate: (value) {

                        },
                      ),
                      isThreeLine:true,

                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () =>
                                    _update(documentSnapshot)),
                            IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () =>
                                    _delete(documentSnapshot.id)),
                          ],
                        ),
                      ),
                    ),

                  );
                },
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
// Add new product

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );
  }
}
