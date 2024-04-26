import 'package:flutter/material.dart';

class Duas extends StatefulWidget {
  const Duas({super.key});

  @override
  State<Duas> createState() => _DuasState();
}

class _DuasState extends State<Duas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dua"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body:Column(
        children: [

          Card(
            elevation: 10,
            child: ExpansionTile(
              leading: Icon(Icons.star,color: Colors.green[200],),
              backgroundColor: Color(0xFF1D4104),
              title: Text("মাতা-পিতার জন্য সন্তানের দোয়া",style: TextStyle(color: Colors.red),),
              children: [
                ListTile(
                  title: Text("রাব্বির হামহুমা কামা রাব্বাঈয়ানী সাগিরা।",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  subtitle: Text("অর্থঃ হে আল্লাহ্ আমার মাতা-পিতার প্রতি আপনি সেই ভাবে সদয় হউন, তাঁরা শৈশবে আমাকে যেমন স্নেহ-মমতা দিয়ে লালন-পালন করেছেন।",style: TextStyle(color: Colors.white60),),
                )
              ],
            ),
          ),
          Card(
            elevation: 10,
            child: ExpansionTile(
              leading: Icon(Icons.star,color: Colors.green[200],),
              backgroundColor: Color(0xFF1D4104),
              title: Text("ঈমানের সাথে মৃত্যু বরণ করার দোয়া",style: TextStyle(color: Colors.red),),
              children: [
                ListTile(
                  title: Text("রাব্বানা লা’তুযিগ কুলুবানা বা’দা ইয হাদাইতানা ওয়া হাবলানা মিল্লাদুনকা রাহমাতান, ইন্নাকা আনতাল ওয়াহাব।",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  subtitle: Text("অর্থঃ হে আমাদের পালনকর্তা, সরলপথ প্রদর্শনের পর তুমি আমাদের অন্তরকে বক্র করে দিওনা এবং তুমি আমাদের প্রতি করুনা কর, তুমিই মহান দাতা।",style: TextStyle(color: Colors.white60),),
                )
              ],
            ),
          ),
          Card(
            elevation: 10,
            child: ExpansionTile(
              leading: Icon(Icons.star,color: Colors.green[200],),
              backgroundColor: Color(0xFF1D4104),
              title: Text("ভুল করে ফেললে ক্ষমা চাওয়ার দোয়াঃ",style: TextStyle(color: Colors.red),),
              children: [
                ListTile(
                  title: Text("রাব্বাবা যালামনা আনফুসানা ওয়া ইল্লাম তাগফির্লানা ওয়াতার হামনা লানা কুনান্না মিনাল খা’সিরিন।",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  subtitle: Text("অর্থঃ হে আল্লাহ্, আমি আমার নিজের উপর জুলুম করে ফেলেছি। এখন তুমি যদি ক্ষমা ও রহম না কর, তাহলে আমি ধ্বংস হয়ে যাব।",style: TextStyle(color: Colors.white60),),
                )
              ],
            ),
          ),
          Card(
            elevation: 10,
            child: ExpansionTile(
              leading: Icon(Icons.star,color: Colors.green[200],),
              backgroundColor: Color(0xFF1D4104),
              title: Text(" গুনাহ্ মাফের দোয়া",style: TextStyle(color: Colors.red),),
              children: [
                ListTile(
                  title: Text("রাব্বানা ফাগফিরলানা যুনুবানা ওয়া কাফফির আন্না সাইয়্যিআতিনা ওয়া তাওয়াফ্ফানা মায়াল আবরার।",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  subtitle: Text("অর্থঃ হে আমাদের পালনকর্তা, আমাদের গুনাহসমূহ মাফ করে দাও, আমাদের থেকে সকল মন্দ দূর করে দাও এবং আমাদের নেক লোকদের সাহচার্য দান কর।",style: TextStyle(color: Colors.white60),),
                )
              ],
            ),
          ),
          Card(
            elevation: 10,
            child: ExpansionTile(
              leading: Icon(Icons.star,color: Colors.green[200],),
              backgroundColor: Color(0xFF1D4104),
              title: Text("স্বামী-স্ত্রী-সন্তানদের জন্য দোয়া",style: TextStyle(color: Colors.red),),
              children: [
                ListTile(
                  title: Text("রাব্বানা হাবলানা মিন আযওয়াজিনা ওয়া যুররিইয়াতিনা কুররাতা আইইনিও ওয়াজ আলনা লিল মুত্তাক্বিনা ইমামা।",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  subtitle: Text("অর্থঃ হে আমাদের পালনকর্তা, আমাদিগকে আমাদের স্ত্রী ও সন্তান-সন্ততিগণ হতে নয়নের তৃপ্তি দান কর এবং আমাদেরকে মুত্তাকীদের নেতা বানাও।",style: TextStyle(color: Colors.white60),),
                )
              ],
            ),
          ),

          Card(
            elevation: 10,
            child: ExpansionTile(
              leading: Icon(Icons.star,color: Colors.green[200],),
              backgroundColor: Color(0xFF1D4104),
              title: Text("ঈমান ঠিক রাখার আমল",style: TextStyle(color: Colors.red),),
              children: [
                ListTile(
                  title: Text("ইয়া মুক্বাল্লিবাল কুলুবি ছাব্বিত ক্বালবি আলা দ্বীনিকা।",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  subtitle: Text("অর্থঃ হে মনের গতি পরিবর্তনকারী, আমার মনকে সত্য দ্বীনের উপর স্থিত কর।",style: TextStyle(color: Colors.white60),),
                )
              ],
            ),
          ),

          Card(
            elevation: 10,
            child: ExpansionTile(
              leading: Icon(Icons.star,color: Colors.green[200],),
              backgroundColor: Color(0xFF1D4104),
              title: Text("সকল মুসলমানদের জন্য দোয়া",style: TextStyle(color: Colors.red),),
              children: [
                ListTile(
                  title: Text("আল্লাহুম্মাগ ফিরলী ওয়ালিল মু’মিনিনা ওয়াল মু’মিনাতি, ওয়াল মুসলিমিনা ওয়াল মুসলিমাতি।",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  subtitle: Text("অর্থঃ হে আল্লাহ্ তুমি আমার ও সমস্ত মু’মিন নর-নারীর এবং সমস্ত মুসলমান পুরুষ ও স্ত্রীলোকের পাপ সমূহ মোচন করে দাও।",style: TextStyle(color: Colors.white60),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
