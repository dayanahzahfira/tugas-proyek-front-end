import 'package:flutter/material.dart';

class tanyadokter extends StatefulWidget {
  tanyadokter({Key? key}) : super(key: key);

  @override
  State<tanyadokter> createState() => _tanyadokterState();
}

class _tanyadokterState extends State<tanyadokter> {
  @override
  List dokter = [
    {"fotodokter" : "assets/dokter/dokter duda.jpeg","nama" : "Dayanah Zahfira","spesialis" : "khusus duda"},
    {"fotodokter" : "assets/dokter/dokter duda.jpeg","nama" : "Dayanah Zahfira","spesialis" : "khusus duda"},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          children: dokter.map((e){
            return Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                        image: AssetImage(e['fotodokter'],),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e['nama']),
                        Text(e['spesialis'])
                      ],
                    ),
                  ),
                    ],
                  ),
                  Container(
                    child: ElevatedButton(child: Text("Spesialis"),onPressed: (){},),
                  )
                ],
              ),
                  ),
              Divider(
                color: Colors.black,
                height: 10,
                thickness: 1,
              )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}