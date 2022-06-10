import 'package:flutter/material.dart';
class notification extends StatefulWidget {
  notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  List data = [
    {"Tittle" : "Dokter Budi sedang malakukan siaran langsung: “Apakah OBAT HERBAL lebih ampuh dari RESEP DOKTER ","Subtitle" : "Batuk biasa dan batuk gejala COVID-19 memang tampak mirip. ","gambar" : "assets/penyakit/1.jpg"},
    {"Tittle" : "Kenali penyakit kanker lebih dalam yuk","Subtitle" : "Kanker atau tumor ganas adalah pertumbuhan sel atau jaringan yang tidak terkendali","gambar" : "assets/penyakit/2.png"},
    {"Tittle" : "Bagaimanakah cara sembuh dari Covid-19?","Subtitle" : "Banyak cara untuk sembuh dari covid 10.namun beberapa hal yang harus di perhatikan","gambar" : "assets/penyakit/3.jpeg"},
    {"Tittle" : "Tubuh cepat lelah,waspada berbagai penyakit berikut ini","Subtitle" : "Lelah dapat dikatakan normal jika bisa diatasi dengan tidur.namun bagaimana","gambar" : "assets/penyakit/4.jpg"},
    {"Tittle" : "Vaksin Booster COVID-19 apa bedanya dengan vaksin biasa?","Subtitle" : "subtitle2","gambar" : "assets/penyakit/5.jpg"},

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.notifications),title: Text("NOTIFICATION")),
       body: ListView(
        children: data.map((e) => Column(
          children: [
            ListTile(
            title: Text(e['Tittle'],),
            subtitle: Text(e['Subtitle']),
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(e['gambar']),
                  fit: BoxFit.fill
                )
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          )
          ],
        )).toList()

      ),
    );
  }
}