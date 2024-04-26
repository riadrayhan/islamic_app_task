import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task3/naviItem/dua.dart';
import 'package:task3/naviItem/hadiths.dart';
import 'package:task3/naviItem/quran.dart';
import 'package:task3/naviItem/tasbih.dart';
import 'package:task3/naviItem/zakat_calc.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Card(
            elevation: 10,
            color: Colors.green,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width/1.2,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text("السلام علیكم",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white , fontSize: 20,),),
                  Text("ASSALAM",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 20,),),
                  Text("Today's Dua",style: TextStyle(color: Colors.white),),
                  Text("19 Ramadan 1445 AH",style: TextStyle(color: Colors.white),),
                  Text("Allah is enough for me.There is no true god but him,in Him i put my trust,an He is the Lord of the Great Throne.[Repeat seven time...",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
          //=================//
          SizedBox(height: 18,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Tasbih(),));
                  });
                },
                child: Card(
                  color: Colors.green,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          child: Image.network("https://img.icons8.com/?size=48&id=FG6UjMinUTuO&format=png",fit: BoxFit.contain,),
                        ),
                        Text("Tasbih",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Hadiths(),));
                  });
                },
                child: Card(
                  color: Colors.green,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      children: [
                       Container(
                        height: 60,
                        width: 60,
                         child:  Image.network("https://img.icons8.com/?size=50&id=41414&format=png",fit: BoxFit.contain,),

                       ),
                        Text("Hadith",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Duas(),));
                  });
                },
                child: Card(
                  color: Colors.green,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          child: Image.network("https://img.icons8.com/?size=80&id=nrVPbqVJAWOI&format=png",fit: BoxFit.contain,),

                        ),
                        Text("Dua",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          //=====================//

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Quran(),));
                  });
                },
                child: Card(
                  color: Colors.green,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      children: [
                       Container(
                       height: 60,
                       width: 60,
                         child:  Image.network("https://img.icons8.com/?size=48&id=xo9YqLGZFoWZ&format=png",fit: BoxFit.contain,),
                       ),
                        Text("Al-Quran",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.green,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                     Container(
                    height: 60,
                    width: 60,
                       child:  Image.network("https://img.icons8.com/?size=48&id=JRffiq26vyG2&format=png",fit: BoxFit.contain,),

                     ),
                      Text("Wallpaper",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ZakatCalculator(),));
                  });
                },
                child: Card(
                  color: Colors.green,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      children: [
                      Container(
                        height: 60,
                        width: 60,
                        child:   Image.network("https://img.icons8.com/?size=48&id=63650&format=png",fit: BoxFit.contain,),

                      ),
                        Text("More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
