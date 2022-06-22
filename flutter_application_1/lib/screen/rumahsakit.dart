import 'package:flutter/material.dart';

class rumahsakit extends StatefulWidget {
  rumahsakit({Key? key}) : super(key: key);

  @override
  State<rumahsakit> createState() => _rumahsakitState();
}

class _rumahsakitState extends State<rumahsakit> {
  @override
  List datars = [{"gambarRS" : "assets/rumah sakit/rumah sakit uii.jpg","nama" : "Rumah Sakit Universitas Islam Indonesia"},
                 {"gambarRS" : "assets/rumah sakit/advent.jpg","nama" : "Rumah sakit Advent"},
                 {"gambarRS" : "assets/rumah sakit/murni teguh.jpg","nama" : "Rumah Sakit Murni Teguh memorial"},
                 {"gambarRS" : "assets/rumah sakit/aminah.jpg","nama" : "Rumah Sakit Aminah"},
                 {"gambarRS" : "assets/rumah sakit/rumah sakit uii.jpg","nama" : "Rumah Sakit Universitas Islam Indonesia"},
                 {"gambarRS" : "assets/rumah sakit/rumah sakit uii.jpg","nama" : "Rumah Sakit Universitas Islam Indonesia"},];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rumah Sakit")),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          children: datars.map((e)
          { 
            return Container(
              child: Column(
                children: [
                  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(e['gambarRS']),fit: BoxFit.fill)
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(e['nama']),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.add_call)),
                            IconButton(onPressed: (){}, icon: Icon(Icons.add_call)),
                          ],
                        ),
                      )
],
                  )
                                  ],
              ),
              Divider(
                thickness: 1,
              )
                ],
              )
            );
          }
          ).toList(),
        ),
      ),
    );
  }
}