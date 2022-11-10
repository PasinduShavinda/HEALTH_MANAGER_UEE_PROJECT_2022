import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DietBreakfastView extends StatefulWidget {
  const DietBreakfastView({Key? key}) : super(key: key);

  @override
  State<DietBreakfastView> createState() => _DietBreakfastViewState();
}

class _DietBreakfastViewState extends State<DietBreakfastView> {

  final CollectionReference _dietBreakfast =
  FirebaseFirestore.instance.collection('dietbreakfast');

  // VIEW BREAKFAST
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Health Manager"),
        ),
        body: StreamBuilder(
          stream: _dietBreakfast.snapshots(),
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
                      title: Text(
                        documentSnapshot['topic'],
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        documentSnapshot['ingredients'],
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
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