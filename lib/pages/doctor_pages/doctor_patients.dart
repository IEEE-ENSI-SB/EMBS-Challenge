import 'package:flutter/material.dart';
import 'package:first_flutter_app/pages/costum_card.dart';
import 'package:first_flutter_app/pages/doctor_pages/patient_AbirAffes.dart';


class DoctorPatients extends StatefulWidget {
  const DoctorPatients({super.key});

  @override
  State<DoctorPatients> createState() => _DoctorPatients();
}
class Carda{
  final dynamic leading;
  final String title;
  final String subtitle;
  Carda({
    required this.leading,
    required this.title,
    required this.subtitle,
  });
}


class _DoctorPatients extends State<DoctorPatients> {
  late List<Carda> datalist;
  List<Widget> stackWidgets = [];


  @override
  void initState() {
    super.initState();
    List<Carda>  datalist = [
      Carda(leading:  AssetImage('assets/person/ghaissen.jpg'), title: "Sebai Ghaissen", subtitle: "check Profile"),
      Carda(leading:  AssetImage('assets/person/karim.jpg'), title: "Jegham Mohamed Karim ", subtitle: "check Profile"),
      Carda(leading:  AssetImage('assets/person/abir.jpg'), title: "Afess Abir", subtitle: "check Profile"),
      Carda(leading:  AssetImage('assets/person/majd.jpg'), title: "Bougares Majd", subtitle: "check Profile"),
      Carda(leading:  AssetImage('assets/person/eya.jpg'), title: "Methneni Eya", subtitle: "check Profile"),
      Carda(leading:  AssetImage('assets/person/ghassen.jpg'), title: "Ghesmi Ghassen", subtitle: "check Profile"),
      Carda(leading:  AssetImage('assets/person/imen.jpg'), title: "Lakhal Imen", subtitle: "check Profile"),
      Carda(leading:  AssetImage('assets/person/mahmoud.jpg'), title: "Khmekhem Mahmoud", subtitle: "check Profile"),
      Carda(leading:  AssetImage('assets/person/salma.jpg'), title: "Bouaziz Salma", subtitle: "check Profile"),
      Carda(leading:  AssetImage('assets/person/sarrah.jpg'), title: "Boughriou Sarah", subtitle: "check Profile"),
    ];



    stackWidgets = [
      Container(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Check Profile", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 5,),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(datalist.length, (index) {return CostumCard (color: Colors.grey.shade50, padding: EdgeInsets.all(10), margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5), leading2: datalist[index].leading, leading1: null, title: datalist[index].title, subtitle: datalist[index].subtitle, onTap: () {
                            setState(() {
                              stackWidgets.add(PatientAbir());
                            });
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: stackWidgets);
  }
}
