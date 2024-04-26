import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:task3/naviItem/qalbox.dart';
import 'package:task3/naviItem/home.dart';
import 'package:task3/naviItem/prayers.dart';
import 'package:task3/naviItem/profile.dart';
import 'package:task3/naviItem/quran.dart';
import 'package:task3/naviItem/today.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const HomeActivity(),
    const Today(),
     Prayer(),
     Qalbox(),
    const Quran(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.menu,
      //     color: Theme.of(context).primaryColor,
      //   ),
      //   title: Text(
      //     "Islamic",
      //     style: TextStyle(
      //       color: Theme.of(context).primaryColor,
      //       fontSize: 25,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      // ),
      body: pages[pageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white60,
        color: Color(0xFF05353B),
        buttonBackgroundColor:Colors.teal,
        height: 60,
        items: <Widget>[

          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.calendar_today, size: 30, color: Colors.white),
          Icon(Icons.timer_sharp, size: 30, color: Colors.white),
          Icon(Icons.youtube_searched_for_outlined, size: 30, color: Colors.white),
          Icon(Icons.book_outlined, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
