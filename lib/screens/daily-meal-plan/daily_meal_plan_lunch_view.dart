import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MealLunchView extends StatefulWidget {
  const MealLunchView({Key? key}) : super(key: key);

  @override
  State<MealLunchView> createState() => _MealLunchViewState();
}

class _MealLunchViewState extends State<MealLunchView> {

  final CollectionReference _mealLunch =
  FirebaseFirestore.instance.collection('meallunch');

  // VIEW LUNCH
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Health Manager"),
        ),
        body: StreamBuilder(
          stream: _mealLunch.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                  streamSnapshot.data!.docs[index];
                  return Card(
                    shadowColor: Colors.purpleAccent,
                    margin: const EdgeInsets.all(13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.9),
                    ),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                      child: Text(
                        'Ingredients : '+ documentSnapshot['ingredients'],
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                      ),

                      subtitle: Text(
                        'Description : '+ documentSnapshot['description'],
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          // fontWeight: FontWeight.w600,
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
    );
  }
}