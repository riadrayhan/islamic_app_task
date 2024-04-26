import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class Quran extends StatefulWidget {
  const Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {

  late AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
  }

  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
  Future<void> _playAudio() async {
    if (!_isPlaying) {
      await _audioPlayer.play(AssetSource('surah.mp3'));
      setState(() {
        _isPlaying = true;
      });
    } else {
      await _audioPlayer.pause();
      setState(() {
        _isPlaying = false;
      });
    }
  }

  String cardtext="সুরা নং- ০০১ : আল-ফাতিহা\n"+

  "\n بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ"+

  " \n উচ্চারণ : বিসমিল্লাহির রহমা-নির রহি-ম।\n"+

  " অনুবাদ : শুরু করছি আল্লাহর নামে যিনি পরম করুণাময়, অতি দয়ালু।\n"+

  " \n الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ  "+

  "\n উচ্চারণ : আলহামদু লিল্লাহি রব্বিল আ -লামি-ন।\n"+

  " অনুবাদ : যাবতীয় প্রশংসা আল্লাহ তা’আলার যিনি সকল সৃষ্টি জগতের পালনকর্তা।\n"+

  "\n الرَّحْمَٰنِ الرَّحِيمِ "+

  "\n উচ্চারণ : আররহমা-নির রাহি-ম।\n"+

  "অনুবাদ : যিনি নিতান্ত মেহেরবান ও দয়ালু।\n"+

  "\n مَالِكِ يَوْمِ الدِّين  ِ "+

  "\n উচ্চারণ : মা-লিকি ইয়াওমিদ্দি-ন।"+

  " অনুবাদ : বিচার দিনের একমাত্র অধিপতি।"+

  " \n إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ"+

  "\n উচ্চারণ : ইয়্যা-কা না’বুদু ওয়া ইয়্যা-কা নাসতাই’-ন"+

  " \n অনুবাদ : আমরা একমাত্র তোমারই ইবাদত করি এবং শুধুমাত্র তোমারই সাহায্য প্রার্থনা করি।"+

  "\n   اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ"+

  "\n উচ্চারণ : ইহদিনাস সিরাতা’ল মুসতাকি’-ম"+

  "\nঅনুবাদ : আমাদের সরল পথ দেখাও।"+

  "\n  صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ"+

  "\n উচ্চারণ : সিরাতা’ল্লা যি-না আনআ’মতা আ’লাইহিম গা’ইরিল মাগ’দু’বি আ’লাইহিম ওয়ালা দ্দ-ল্লি-ন।"+

  " \n অনুবাদ : সে সমস্ত লোকের পথ, যাদেরকে তুমি নেয়ামত দান করেছ। তাদের পথ নয়, যাদের প্রতি তোমার গজব নাযিল হয়েছে এবং যারা পথভ্রষ্ট হয়েছে।";

  Future<void> _copyTextToClipboard(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Text copied to clipboard')),
    );
  }

  Future<void> _shareText(String text) async {
    await Share.share(text);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Sharing to Card Data')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("আল ফাতিহা \nسورة الفاتحة"),
        backgroundColor: Colors.teal,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings,color: Colors.white,),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            Card(
              elevation: 10,
              color: Colors.green[200],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(cardtext),
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        ElevatedButton( onPressed:_playAudio,child: Icon(_isPlaying ? Icons.pause: Icons.play_arrow)),


                        ElevatedButton(onPressed: () {
                          _shareText(cardtext);

                        }, child: Icon(Icons.share)),

                        ElevatedButton(onPressed: () {

                          _copyTextToClipboard(cardtext);
                        }, child: Icon(Icons.copy)),



                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
