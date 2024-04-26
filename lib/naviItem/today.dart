import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  const Today({super.key});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Today"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(child: Text("Today Activity"),),
    );
  }
}
