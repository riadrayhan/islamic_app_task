import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Prayer extends StatefulWidget {
  @override
  _PrayerState createState() => _PrayerState();
}

class _PrayerState extends State<Prayer> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
        title: Text("Prayer"),
        backgroundColor: Colors.teal,
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: [
            Tab(child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
            Tab(child: Text("My Duas",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
          ],

        ),
      ),
      body:  TabBarView(
          controller: _tabController,
          children: [
            Column(
              children: [
                // Container(
                //   height: 60,
                //   padding: EdgeInsets.all(10),
                //   width: MediaQuery.of(context).size.width / 1,
                //   child: SearchBar(hintText: "Search"),
                // ),
                SizedBox(height: 20),
                Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    color: Colors.white,
                                    elevation: 10,
                                    child: Container(
                                      height: 100,
                                      width: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Align(alignment: Alignment.topLeft, child: Text("All",style: TextStyle(fontWeight: FontWeight.bold),)),
                                          ),
                                          SizedBox(height: 17,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("132 Chapters"),
                                              Container(
                                                height: 50,
                                                width: 45,
                                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy8-7bxpk7XNUniFjt97J_33yfL_e-u0K3uFM9nhd9yA&s",fit: BoxFit.contain,),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    color: Colors.white,
                                    elevation: 10,
                                    child: Container(
                                      height: 100,
                                      width: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Align(alignment: Alignment.topLeft, child: Text("Morning and Evening",style: TextStyle(fontWeight: FontWeight.bold))),
                                          ),
                                          SizedBox(height: 17,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("6 Chapters"),
                                              Container(
                                                height: 50,
                                                width: 45,
                                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCfDm7GgMtjqD4QfuigyI8ZEHLN_6NNBSMTe9yfKPleKrOZud8t0vljfIxtR1yQP-xJMg&usqp=CAU",fit: BoxFit.contain,),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            ],
                          ),

                          //=========================first end=========================//

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    color: Colors.white,
                                    elevation: 10,
                                    child: Container(
                                      height: 100,
                                      width: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Align(alignment: Alignment.topLeft, child: Text("Prayer",style: TextStyle(fontWeight: FontWeight.bold))),
                                          ),
                                          SizedBox(height: 17,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("19 Chapters"),
                                              Container(
                                                height: 50,
                                                width: 45,
                                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX3cFXpmQpzzlh7Rdz-Rb7Wkrj4pY2ULuBW18myUkHY4Zo4QPGQdab4okNSYHBw-VzqzI&usqp=CAU",fit: BoxFit.contain,),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    color: Colors.white,
                                    elevation: 10,
                                    child: Container(
                                      height: 100,
                                      width: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Align(alignment: Alignment.topLeft, child: Text("Praising Allah",style: TextStyle(fontWeight: FontWeight.bold))),
                                          ),
                                          SizedBox(height: 17,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("9 Chapters"),
                                              Container(
                                                height: 50,
                                                width: 45,
                                                child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/005/940/057/small_2x/of-arabic-calligraphy-allah-in-arabic-writing-god-name-in-arabic-illustration-eps-10-free-vector.jpg",fit: BoxFit.contain,),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //===================second end=========================//

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    color: Colors.white60,
                                    elevation: 10,
                                    child: Container(
                                      height: 100,
                                      width: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Align(alignment: Alignment.topLeft, child: Text("Hajj and Umrah",style: TextStyle(fontWeight: FontWeight.bold))),
                                          ),
                                          SizedBox(height: 17,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("8 Chapters"),
                                              Container(
                                                height: 50,
                                                width: 45,
                                                child: Image.network("https://islamonline.net/wp-content/uploads/2022/01/religious-gathering-around-the-Kaabah-489x275.jpg",fit: BoxFit.contain,),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    color: Colors.deepOrangeAccent[200],
                                    elevation: 10,
                                    child: Container(
                                      height: 100,
                                      width: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Align(alignment: Alignment.topLeft, child: Text("Travel",style: TextStyle(fontWeight: FontWeight.bold))),
                                          ),
                                          SizedBox(height: 17,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("11 Chapters"),
                                              Container(
                                                height: 50,
                                                width: 45,
                                                child: Image.network("https://thumbs.dreamstime.com/b/air-travel-airplane-silhouette-vacation-holiday-concept-31660569.jpg",fit: BoxFit.contain,),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          //======================================//

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    color: Colors.white,
                                    elevation: 10,
                                    child: Container(
                                      height: 100,
                                      width: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Align(alignment: Alignment.topLeft, child: Text("Joy and Distress",style: TextStyle(fontWeight: FontWeight.bold))),
                                          ),
                                          SizedBox(height: 17,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("15 Chapters"),
                                              Container(
                                                height: 50,
                                                width: 45,
                                                child: Image.network("https://www.shutterstock.com/shutterstock/photos/391280212/display_1500/stock-vector-set-of-smile-emoticons-isolated-on-white-background-line-icons-emoticons-happy-and-unhappy-391280212.jpg",fit: BoxFit.contain,),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    color: Colors.green,
                                    elevation: 10,
                                    child: Container(
                                      height: 100,
                                      width: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Align(alignment: Alignment.topLeft, child: Text("Nature",style: TextStyle(fontWeight: FontWeight.bold))),
                                          ),
                                          SizedBox(height: 17,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("10 Chapters"),
                                              Container(
                                                height: 50,
                                                width: 45,
                                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKtKkuCjVMZ09HHU7OxCs0h7421BzTwVWGjA&usqp=CAU",fit: BoxFit.contain,),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),


                          //======================================//

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    color: Colors.white,
                                    elevation: 10,
                                    child: Container(
                                      height: 100,
                                      width: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Align(alignment: Alignment.topLeft, child: Text("Good Etiquette",style: TextStyle(fontWeight: FontWeight.bold))),
                                          ),
                                          SizedBox(height: 17,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("15 Chapters"),
                                              Container(
                                                height: 50,
                                                width: 45,
                                                child: Image.network("https://sg-res.9appsdownloading.com/sg/res/jpg/fc/3c/cd7fef43d4457f793616d239b5cf-g8m.jpg?x-oss-process=style/mq200",fit: BoxFit.contain,),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    color: Colors.white,
                                    elevation: 10,
                                    child: Container(
                                      height: 100,
                                      width: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Align(alignment: Alignment.topLeft, child: Text("Home and Family",style: TextStyle(fontWeight: FontWeight.bold))),
                                          ),
                                          SizedBox(height: 17,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text("10 Chapters"),
                                              Container(
                                                height: 50,
                                                width: 45,
                                                child: Image.network("https://img.freepik.com/free-vector/flat-design-family-symbol_23-2149282971.jpg?size=338&ext=jpg&ga=GA1.1.1224184972.1714003200&semt=sph",fit: BoxFit.contain,),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          //=============================================//


                        ],
                      ),

                    ],
                  ),

              ],
            ),
            //========ITEMS START==============///
            Center(child: Text("duas items")),
          ],
        ),



    );
  }
}



// class SearchBar extends StatelessWidget {
//   final String? hintText;
//
//   const SearchBar({Key? key, this.hintText}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: hintText,
//         border: OutlineInputBorder(),
//         prefixIcon: Icon(Icons.search),
//       ),
//     );
//   }
// }