import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF060D13),
        child: Column(
          children: [

            Card(
              elevation: 10,
              color: Color(0xE409052D),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("")
                    ],
                  ),

                  ListTile(
                    leading: Icon(Icons.edit,color: Colors.white,),
                    title: Text("Edit Profile",style: TextStyle(color: Colors.white),),
                    subtitle: Text("Logged in as Syed Sajib(Google)",style: TextStyle(color: Colors.white24),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                  ListTile(
                    leading: Icon(Icons.color_lens,color: Colors.white,),
                    title: Text("Colour Theme",style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.invert_colors_on,color: Colors.green,),
                  ),
                  ListTile(
                    leading: Icon(Icons.workspace_premium,color: Colors.white,),
                    title: Text("Premium",style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                ],
              ),
            ),
            //=============1st end===============//

            Card(
              elevation: 10,
              color: Color(0xE409052D),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Communication Preferences",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("")
                    ],
                  ),

                  ListTile(
                    leading: Icon(Icons.notifications,color: Colors.white,),
                    title: Text("Push Notification",style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                  ListTile(
                    leading: Icon(Icons.mail,color: Colors.white,),
                    title: Text("Free Newslatter",style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                ],
              ),
            ),
            //=============2nd end===============//

            Card(
              elevation: 10,
              color: Color(0xE409052D),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Feature Settings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("")
                    ],
                  ),

                  ListTile(
                    leading: Icon(Icons.edit,color: Colors.white,),
                    title: Text("Prayer Times",style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                  ListTile(
                    leading: Icon(Icons.book_outlined,color: Colors.white,),
                    title: Text("Quran",style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                  ListTile(
                    leading: Icon(Icons.front_hand_rounded,color: Colors.white,),
                    title: Text("Duas",style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                ],
              ),
            ),
            //============================//
          ],
        ),
      ),
    );
  }
}
