import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Hadiths extends StatefulWidget {
  const Hadiths({super.key});

  @override
  State<Hadiths> createState() => _HadithsState();
}

class _HadithsState extends State<Hadiths> {

  final pages=[

    Container(
      color: Color(0xE409052D),
      padding: EdgeInsets.all(5),
      child: Column(
      children: [
        Text("আখিরাতে মু'মিনগন তাদের প্রতিপালককে দেখতে পাবে",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
        SizedBox(height: 12,),
        Text("নাসর ইবনু আলী আল জাহযামী, আবূ গাসনান আল মিসমাঈ ও ইসহাক ইবনু ইবরাহীম (রহঃ) ... আবদুল্লাহ ইবনু কায়স (রাঃ) থেকে বর্ণিত যে, নবী সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম ইরশাদ করেনঃ দুটি জান্নাত এমন যে, এগুলোর পাত্রাদি ও সমুদয় সামগ্রী রুপার তৈরি। অন্য দুটি জান্নাত এমন, যেগুলোর পাত্রাদি ও সমুদয় সামগ্রী স্বর্ণের তৈরি। “আদন” নামক জান্নাতে জান্নাতিগণ আল্লাহর দীদার লাভ করবেন। এ সময় তাঁদের ও আল্লাহর মাঝে তাঁর মহিমার চাঁদর ব্যতীত আর কোন অন্তরায় থাকবে না।",style: TextStyle(color: Colors.white)),
        SizedBox(height: 55,),
        Text("Please swip by fingure",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.cyanAccent)),
      ],
    ),),

    Container(
      color: Color(0xFF0A1C03),
      padding: EdgeInsets.all(5),
      child: Column(
      children: [
        Text("জান্নাতের বিবরণ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
        SizedBox(height: 12,),
        Text("সুহাইব (রাঃ) হতে বর্ণিত, রাসূলুল্লাহ সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম বলেছেন, ’’জান্নাতীরা যখন জান্নাতে প্রবেশ করে যাবে, তখন মহান বরকতময় আল্লাহ বলবেন, ’তোমরা কি চাও যে, আমি তোমাদের জন্য আরো কিছু বেশি দিই?’ তারা বলবে, ’তুমি কি আমাদের মুখমণ্ডল উজ্জ্বল করে দাওনি? আমাদেরকে তুমি জান্নাতে প্রবিষ্ট করনি এবং জাহান্নাম থেকে মুক্তি দাওনি?’ অতঃপর আল্লাহ (হঠাৎ) পর্দা সরিয়ে দেবেন (এবং তারা তাঁর চেহারা দর্শন লাভ করবে)। সুতরাং জান্নাতের লব্ধ যাবতীয় সুখ-সামগ্রীর মধ্যে জান্নাতীদের নিকট তাদের প্রভুর দর্শন (দীদার)ই হবে সবচেয়ে বেশী প্রিয়।’’ (আহমাদ ৪/৩৩২, মুসলিম ৪৬৭)নিশ্চয়ই যারা বিশ্বাস করেছে এবং ভাল কাজ করেছে তাদের প্রতিপালক তাদের বিশ্বাসের কারণে তাদেরকে পথ প্রদর্শন করবেন, শান্তির উদ্যানসমূহে তাদের (বাসস্থানের) তলদেশ দিয়ে নদীমালা প্রবাহিত থাকবে। সেখানে তাদের বাক্য হবে, ’সুবহানাকাল্লাহুম্মা’ (হে আল্লাহ! তুমি মহান পবিত্র)! এবং পরস্পরের অভিবাদন হবে সালাম। আর তাদের শেষ বাক্য হবে, ’আলহামদু লিল্লাহি রাব্বিল আলামীন’ (সমস্ত প্রশংসা সারা জাহানের প্রতিপালক আল্লাহর জন্য)। (সূরা ইউনুস ৯-১০)",style: TextStyle(color: Colors.white))
      ],
    ),),

    Container(
      color: Color(0xE42A0E03),
      padding: EdgeInsets.all(5),
      child: Column(
      children: [
        Text("তায়াম্মুমের বিবরণ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
        SizedBox(height: 12,),
        Text("আবদুল্লাহ ইবনু হাশিম আন-আবদী (রহঃ) ... আবদুর রহমান ইবনু আবযা (রাঃ) থেকে বর্ণিত যে, এক ব্যাক্তি উমার (রাঃ) এর কাছে এসে বলল, আমি অপবিত্র হয়েছি, কিন্তু পানি পাইনি (তখন কি করব?)। তিনি বললেন, তুমি সালাত (নামায/নামাজ) আদায় করোনা। তখন আম্মার (রাঃ) বললেন, “আমিরুল মুমিনীন! আপনার কি স্মরণ নেই যে, আমিও আপনি কোন এক অভিযানে অংশ গ্রহণ করেছিলাম। অতঃপর আমরা উভয়েই অপবিত্র হয়ে পড়লাম। আর কোথাও পানি পেলাম না। তখন আপনি সালাত আদায় করলেন না, কিন্তু আমি মাটিতে গড়াগড়ি দিলাম এবং সালাত আদায় করলাম।অতঃপর রাসুলুল্লাহ সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম কে এ ঘটনা জানালে (তিনি) বললেন, তোমার জন্য এটাই যথেষ্ট ছিল যে, তোমার উভয় হাত মাটিতে মারতে তারপর তা ঝেড়ে ফেলে তা দিয়ে তোমার মূখমশুল ও উভয় হাতের কবজি মাসহ(মাসেহ) করতে” উমার (রাঃ) বললেন, আম্মার! আল্লাহকে ভয় কর। তিনি (আম্মার) বললেন, আপনি চাইলে আমি এটা আর বর্ননা করব না”।হাকাম বলেন, আব্দুর রহমান ইবনু আবযার পূত্র তাঁর পিতা আবদুর রহমান থেকে আমার কাছে যার্‌র-এর হাদীসের অনুরুপ বর্ণনা করেছেন। তিনি বলেন, অতঃপর উমার (রাঃ) বললেন, তোমার বর্ণনার দায়-দায়িত্ব তোমার উপরই অর্পণ করলাম।",style: TextStyle(color: Colors.white))
      ],
    ),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hadith"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: LiquidSwipe(pages: pages),

    );
  }
}