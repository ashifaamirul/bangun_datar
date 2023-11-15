import 'package:bangun_datar_app/pages/JajarGenjangPage.dart';
import 'package:bangun_datar_app/pages/PersegiPage.dart';
import 'package:bangun_datar_app/pages/PersegiPanjangPage.dart';
import 'package:bangun_datar_app/pages/SegitigaPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink.shade300,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
    },
          child: CustomMenu(imageAssets: "assets/persegi.png",title:"Persegi",)),
          InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjangPage()));
              },
              child: CustomMenu(imageAssets: "assets/persegi panjang.jpg",title:"Persegi Panjang",)),
          InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>segitiga_page()));
              },
              child: CustomMenu(imageAssets: "assets/segitiga.png",title:"Segitiga",)),
          InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>JajargenjangPage()));
              },
              child: CustomMenu(imageAssets: "assets/jajar genjang.png",title:"Jajar Genjang",)),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAssets: "assets/persegi.png",title:"Persegi",)),
              Expanded(child: CustomMenu(imageAssets: "assets/persegi.png",title:"Persegi",)),
              Expanded(child: CustomMenu(imageAssets: "assets/persegi.png",title:"Persegi",))

            ],
          )
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.pinkAccent.shade100
      ),
      child: Column(
        children: [
          Image.asset(
            imageAssets, height: 100,
          ),
          Text(title),

        ],
      ),
    );
  }
}
