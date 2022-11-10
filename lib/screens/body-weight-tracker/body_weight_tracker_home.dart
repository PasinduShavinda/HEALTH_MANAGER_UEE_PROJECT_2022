import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BWTHOME extends StatefulWidget {
  const BWTHOME({super.key});

  @override
  State<BWTHOME> createState() => _BWTHOMEState();
}

class _BWTHOMEState extends State<BWTHOME> {

  // Text fields' controllers
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  final CollectionReference _weight =
  FirebaseFirestore.instance.collection('weights');

  // ADD WEIGHT FUNCTION
  Future<void> _create([DocumentSnapshot? documentSnapshot]) async {

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
                TextField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.man),
                      labelText: 'Weight (Kg)'
                  ),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: _dateController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today),
                      labelText: 'Date',
                  ),
                  readOnly: true,
                  onTap: () async{
                    DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101)
                    );
                    if(pickedDate != null ){
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16

                      setState(() {
                        _dateController.text = formattedDate; //set output date to TextField value.
                      });
                    }else{
                      print("Date is not selected");
                    }
                  },
                ),

                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 160),
                      backgroundColor: Colors.purple
                  ),
                  child: const Text('Submit',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () async {
                    final String weight = _weightController.text;
                    final String dates = _dateController.text;
                    if (weight != null) {
                      await _weight.add({"weight": weight, "date": dates});
                      _weightController.text = '';
                      _dateController.text = '';
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Successfully Submitted')
                      ));
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  // UPDATE WEIGHT FUNCTION
  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {

      _weightController.text = documentSnapshot['weight'];
      _dateController.text = documentSnapshot['date'];
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
                TextField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.man),
                      labelText: 'Weight'),
                  keyboardType: TextInputType.number,
                  
                ),
                TextField(
                  controller: _dateController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    labelText: 'Date',
                  ),
                  readOnly: true,
                  onTap: () async{
                    DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101)
                    );
                    if(pickedDate != null ){
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16

                      setState(() {
                        _dateController.text = formattedDate; //set output date to TextField value.
                      });
                    }else{
                      print("Date is not selected");
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 150),
                    backgroundColor: Colors.orange
                  ),
                  child: const Text( 'Update',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () async {
                    final String weight = _weightController.text;
                    final String dates = _dateController.text;
                    if (weight != null) {
                      await _weight
                          .doc(documentSnapshot!.id)
                          .update({"weight": weight, "date": dates});
                      _weightController.text = '';
                      _dateController.text = '';
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Successfully Updated')
                      ));
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  // DELETE WEIGHT FUNCTION
  Future<void> _delete(String recordId) async {
    await _weight.doc(recordId).delete();
    _navigateToBodyWeightTrackerHome(context);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Successfully Deleted')
    )
    );
  }

  // VIEW BODY WEIGHTS
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Health Manager"),
        ),
        body: StreamBuilder(
          stream: _weight.snapshots(),
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
                        documentSnapshot['weight'] + ' kg',
                        style: TextStyle(
                        fontSize: 27,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      subtitle: Text(
                        documentSnapshot['date'],
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: SizedBox(
                        width: 130,
                        child: Row(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xEFEFEFFF),
                                shape: CircleBorder(),
                              ),
                              child: Icon(
                                Icons.edit,
                                color: Color(0xFFFFA000),
                              ),
                              onPressed: () => _update(documentSnapshot),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xEFEFEFFF),
                                shape: CircleBorder(),
                              ),
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                // Delete Confirmation Message
                                  // set up the buttons
                                  Widget cancelButton = TextButton(
                                    child: Text("Cancel"),
                                    onPressed:  () {
                                      _navigateToBodyWeightTrackerHome(context);
                                    },
                                  );
                                  Widget continueButton = TextButton(
                                    child: Text("Ok"),
                                    onPressed: () => _delete(documentSnapshot.id),
                                  );

                                  // set up the AlertDialog
                                  AlertDialog alert = AlertDialog(
                                    title: Text("Health Manager"),
                                    content: Text("Are you sure want to delete?"),
                                    actions: [
                                      cancelButton,
                                      continueButton,
                                    ],
                                  );
                                  // show the dialog
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return alert;
                                    },
                                  );
                              },
                            ),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () => _create(),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );
  }

  void _navigateToBodyWeightTrackerHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BWTHOME()));
  }
}