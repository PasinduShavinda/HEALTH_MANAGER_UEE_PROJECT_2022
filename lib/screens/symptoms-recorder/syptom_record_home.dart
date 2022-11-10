import 'package:flutter/material.dart';
import 'package:health_manager_uee_project_2022/screens/symptoms-recorder/other_symptoms.dart';
import 'abdomensymptoms.dart';
import 'bodysymptoms.dart';
import 'doctor_treatments_home_page.dart';
import 'headsymptoms.dart';
import 'mentalsymptoms.dart';
import 'skinsymptoms.dart';




class SyptRecordHOME extends StatefulWidget {
  const SyptRecordHOME({super.key});

  @override
  State<SyptRecordHOME> createState() => _SyptRecordHOMEState();


}

class _SyptRecordHOMEState extends State<SyptRecordHOME> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Health Manager"),
          backgroundColor:Color(0xffc396e5),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

                children: const <Widget>[
                  Spacer(),
                  Text(
                    "Select Body Part",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 26,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  HeadSymptoms(),
                  BodySymptoms(),
                  AbdomenSymptoms(),
                  mentalsymptoms(),
                  skinsymptoms(),
                  OtherSymptoms(),

                Spacer(),
                  DoctorTreatments(),


                ],



            ),

          ),

        )
    );
  }
}

/// An example of the elevated card type.
///
/// The default settings for [Card] will provide an elevated
/// card matching the spec:
///
/// https://m3.material.io/components/cards/specs#a012d40d-7a5c-4b07-8740-491dec79d58b
class HeadSymptoms extends StatelessWidget {
  const HeadSymptoms({super.key});

  void _navigateToHeadSymptoms(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeadSymptomsPage()));
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Color(0xffc396e5)
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
          splashColor: Colors.purpleAccent.withAlpha(30),
            onTap: () {
              _navigateToHeadSymptoms(context);
            },
        child:  SizedBox(
          width: 300,
          height: 60,
          child: Row(
            children: [
              Image(
                  image: AssetImage('assets/head.png'),
                width: 70,
                height: 70),

              Text("Head",
                style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 20,
                color: Colors.black,
              ),),

            ],
          ),
        ),
      ),
      ),
    );
  }


}

class OtherSymptoms extends StatelessWidget {
  const OtherSymptoms({super.key});

  void _navigateToHeadSymptoms(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtherSymptomsPage()));
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Color(0xffc396e5)
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.purpleAccent.withAlpha(30),
          onTap: () {
            _navigateToHeadSymptoms(context);
          },
          child:  SizedBox(
            width: 300,
            height: 60,
            child: Row(
              children: [ Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child:
                Image(
                    image: AssetImage('assets/otherSymptoms.jpg'),
                    width: 40,
                    height: 40),),
            Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
            child:
            Text("Other",

              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 20,
                color: Colors.black,
              ),),

            ),


              ],
            ),
          ),
        ),
      ),
    );
  }


}



/// An example of the filled card type.
///
/// To make a [Card] match the filled type, the default elevation and color
/// need to be changed to the values from the spec:
///
/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
class BodySymptoms extends StatelessWidget {
  const BodySymptoms({super.key});
  void _navigateToBodySymptoms(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BodySymptomsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Color(0xffc396e5)
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
    clipBehavior: Clip.hardEdge,
    child: InkWell(
    splashColor: Colors.blue.withAlpha(30),
    onTap: () {

      _navigateToBodySymptoms(context);
    },
        child: SizedBox(
          width: 300,
          height: 60,
          child: Row(
            children: [
              Image(
                  image: AssetImage('assets/body.png'),
                  width: 70,
                  height: 70),

              Text("Body",
                style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 20,
                color: Colors.black,
              ),),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

/// An example of the outlined card type.
///
/// To make a [Card] match the outlined type, the default elevation and shape
/// need to be changed to the values from the spec:
///
/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
class AbdomenSymptoms extends StatelessWidget {
  const AbdomenSymptoms({super.key});
  void _navigateToAbdomenSymptoms(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AbdomenSymptomsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color:Color(0xffc396e5)
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
          clipBehavior: Clip.hardEdge,
           child: InkWell(
             splashColor: Colors.purpleAccent.withAlpha(30),
              onTap: () {
                _navigateToAbdomenSymptoms(context);
                  },

                 child:  SizedBox(
                   width: 300,
                   height: 60,
                   child: Row(

                      children: [
                        Image(
                           image: AssetImage('assets/stomach.png'),
                           width: 70,
                           height: 70),
                           Text("Abdomen",
                             style: TextStyle(
                               fontWeight: FontWeight.w400,
                               fontStyle: FontStyle.normal,
                               fontSize: 20,
                               color: Colors.black,
                             ),),

            ],
          ),
        ),
      ),
    ),
    );
  }
}

class skinsymptoms extends StatelessWidget {
  const skinsymptoms({super.key});

  void _navigateToSkinSymptoms(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SkinSymptomsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color:Color(0xffc396e5)
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
         clipBehavior: Clip.hardEdge,
             child: InkWell(
             splashColor: Colors.purpleAccent.withAlpha(30),
             onTap: () {
               _navigateToSkinSymptoms(context);
               },
        child:  SizedBox(
          width: 300,
          height: 60,
          child: Row(
            children: [
              Image(
                  image: AssetImage('assets/skin.png'),
                  width: 70,
                  height: 70),
              Text("Skin",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: Colors.black,
                ),)

            ],
          ),
        ),
      ),
    ),
    );
  }
}

class mentalsymptoms extends StatelessWidget {
  const mentalsymptoms({super.key});
  void _navigateToMentalSymptoms(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MentalSymptomsPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Color(0xffc396e5)
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
    clipBehavior: Clip.hardEdge,
    child: InkWell(
    splashColor: Colors.purpleAccent.withAlpha(30),
    onTap: () {
      _navigateToMentalSymptoms(context);
    },
        child:  SizedBox(
          width: 300,
          height: 60,
          child: Row(
            children: [
          Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child:
              Image(
                  image: AssetImage('assets/mental.png'),
                  width: 40,
                  height: 40),
          ),
      Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
        child:
              Text("Mental",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: Colors.black,
                ),),)
            ],
          ),
        ),
      ),
      ),
    );
  }
}

class DoctorTreatments extends StatelessWidget {
  const DoctorTreatments({super.key});
  void _navigateToDoctorTreatementHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MedicalNote()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
          color: Color(0xffc396e5),

        shape: RoundedRectangleBorder(
          side: BorderSide(
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        clipBehavior: Clip.hardEdge,
             child: InkWell(
             splashColor: Colors.purpleAccent.withAlpha(30),
             onTap: () {
               _navigateToDoctorTreatementHome(context);
               },
            child:  SizedBox(
             width: 300,
             height: 180,
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding( padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child:  Column(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text(
                            "Doctor",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                          ),

                          Text(
                            "Treatements",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                          ),
                          Text(
                            "Records",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                          ),

                        ],
                      ),),


                        Image(

                            image: AssetImage('assets/doctor.png'),
                            width: 160,
                            height: 180
                            ),



                  ],
                ),
              ),

            )
        ),
      ),
    );
  }
}

