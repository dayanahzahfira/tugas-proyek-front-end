import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/infokesehatan.dart';
import 'package:flutter_application_1/screen/profile.dart';
import 'package:flutter_application_1/screen/rumahsakit.dart';
import 'package:flutter_application_1/screen/tanyadokter.dart';

class homescreen extends StatefulWidget {
  homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  TextEditingController singer =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-HEALTH'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.purple),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(45)),
                      image: DecorationImage(image: AssetImage("assets/profile.jpg"),fit: BoxFit.fill)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kang Daniel',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'daniel@mail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),)
                ],
              ),
                ),
                Divider(),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => profile())));
                  },
                  leading: Icon(Icons.people),
                  title: Text('Profile'),
                  trailing: Icon(Icons.keyboard_arrow_right_outlined),
                ),
               
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 100),
        child: Column(
        children: [
          Row(children: [TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>tanyadokter()));
          }, child: Column(children: [Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)),
            image: DecorationImage(image: AssetImage("assets/dokter.jpg"),fit: BoxFit.fill)
            ),
          ),
          Text("Tanya"),Text('Dokter')],),style: TextButton.styleFrom(
            padding: EdgeInsets.all(0)
          ),),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => rumahsakit()));
          }, child: Column(children: [Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)),
            image: DecorationImage(image: AssetImage("assets/RS.jpg"),fit: BoxFit.fill)
            ),
          ),
          Text("Rumah"),Text("Sakit")],),style: TextButton.styleFrom(
            padding: EdgeInsets.all(0)
          ),),
          TextButton(onPressed: (){
            
          }, child: Column(children: [Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)),
            image: DecorationImage(image: AssetImage("assets/menu_makanan.png"),fit: BoxFit.fill)
            ),
          ),
          Text("menu"),Text('makanan')],),style: TextButton.styleFrom(
            padding: EdgeInsets.all(0)
          ),)
          ],),
          Row(children: [TextButton(onPressed: (){}, child: Column(children: [Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)),
            image: DecorationImage(image: AssetImage("assets/olahraga.jpg"),fit: BoxFit.fill)
            ),
          ),
          Text("olahraga")],),style: TextButton.styleFrom(
            padding: EdgeInsets.all(0)
          ),),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> infokesehatan()));
          }, child: Column(children: [Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)),
            image: DecorationImage(image: AssetImage("assets/kesehatan.jpg"),fit: BoxFit.fill)
            ),
          ),
          Text("info"),Text('kesehatan')],),style: TextButton.styleFrom(
            padding: EdgeInsets.all(0)
          ),),
          TextButton(onPressed: (){}, child: Column(children: [Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)),
            image: DecorationImage(image: AssetImage("assets/lainnya.png"),fit: BoxFit.fill)
            ),
          ),
          Text("lainnya")],),style: TextButton.styleFrom(
            padding: EdgeInsets.all(0)
          ),)
          ],),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
            margin: EdgeInsets.only(top: 20),
            child: TextButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context)=> Wrap(
                children: [
                   TextField(
              controller: singer,
              decoration: InputDecoration(
                hintText: "NIK",
                labelText: "NIK",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("tekan"))
                ],
              ));
            }, child: Image.asset("assets/vaksin.jpg")),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: TextButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context)=> Wrap(
                children: [
                   TextField(
              controller: singer,
              decoration: InputDecoration(
                hintText: "Kartu Indonesia Sehat",
                labelText: "NIK",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("tekan"))
                ],
              ));
            }, child: Image.asset("assets/bpjs.jpg")),
          ),
              ],
            ),
          )
        ],
      ),)
    );
    
  }
}
  