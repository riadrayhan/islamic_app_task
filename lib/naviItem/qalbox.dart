import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Qalbox extends StatefulWidget {
  @override
  _QalboxState createState() => _QalboxState();
}

class _QalboxState extends State<Qalbox> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search,color: Colors.white,),
        title: Text("Videos",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Icon(Icons.video_settings,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.settings,color: Colors.white,),
              )
            ],
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: [
            Tab(child: Text("All",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
            Tab(child: Text("Islam",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
            Tab(child: Text("Kids",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
            Tab(child: Text("Lifestyle",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
            Tab(child: Text("Show",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xe409052d),
        child: TabBarView(
          controller: _tabController,
          children: [

          Column(
            children: [
              SizedBox(height: 12,),
              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage("https://sc0.blr1.digitaloceanspaces.com/large/811508-37481-zihwweffpl-1468156814.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmQ3UhIquzKEGYB539zw3-VLO4sxr2gcVYfgwltKGeyF51ECMaz6Y-ROJ3MAerPOIkOv8&usqp=CAU"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage("https://qph.cf2.quoracdn.net/main-qimg-6f306f6da7a4d14a511ce763fe205fd5"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage("https://d2u0ktu8omkpf6.cloudfront.net/251a0cc4261d95f459c84660a69ab8bb5475104cb45b9c74.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage("https://qph.cf2.quoracdn.net/main-qimg-ffabacc189c57265704eb4533871d570-lq"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Newaest Partners",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                    Text("view all",style: TextStyle(fontSize: 11,color: Colors.white),)
                  ],
                ),
              ),
              //==========================//
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 120,
                      padding: EdgeInsets.all(10),
                      width: 170,
                      child: Image.network("https://cdnm.muslim.or.id/wp-content/uploads/2020/09/Pentingnya-Pemahaman-dalam-Mempelajari-Al-Quran-dan-As-Sunnah-Muslimorid.jpg?strip=all&lossy=1&ssl=1",  fit: BoxFit.cover,),
                    ),
                    Container(
                      height: 120,
                      width: 170,
                      padding: EdgeInsets.all(10),
                      child: Image.network("https://islamic-relief.org.my/wp-content/uploads/2020/11/OMAR-HANA-Logo-01.png",  fit: BoxFit.cover,),
                    ),
                    Container(
                      height: 120,
                      width: 170,
                      padding: EdgeInsets.all(10),
                      child: Image.network("https://alhudacibe.com/aifs2022/images/supporters/supporter_02.jpg",  fit: BoxFit.cover,),
                    ),
                  ],
                ),
              ),
              //=====================//
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("EID with Action",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                    Text("view all",style: TextStyle(fontSize: 11,color: Colors.white),)
                  ],
                ),
              ),
//==============================================//
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 130,
                      width: 170,
                      padding: EdgeInsets.all(10),
                      child: Image.network("https://i.ytimg.com/vi/Z2Twf71i8uQ/maxresdefault.jpg",  fit: BoxFit.cover,),
                    ),
                    Container(
                      height: 130,
                      width: 170,
                      padding: EdgeInsets.all(10),
                      child: Image.network("https://www.icit-digital.org/admin/docs/content/featured/5e5b14486e7f1_369.jpg",  fit: BoxFit.cover,),
                    ),
                    Container(
                      height: 130,
                      width: 170,
                      padding: EdgeInsets.all(10),
                      child: Image.network("https://www.islamicity.org/wp-content/plugins/blueprint-timthumb/timthumb.php?src=https://media.islamicity.org/wp-content/uploads/2020/07/AhmadIbnhanbal-ep1.jpg&w=350&h=196&q=100",  fit: BoxFit.cover,),
                    ),
                  ],
                ),
              ),

            ],

          ),



            //==================//
            Center(child: Text('Content of Tab 2')),
            Center(child: Text('Content of Tab 3')),
            Center(child: Text('Content of Tab 4')),
            Center(child: Text('Content of Tab 5')),
          ],
        ),
      ),
    );
  }
}