import 'package:flutter/material.dart';

class TabbarOne extends StatefulWidget {
  const TabbarOne({super.key});

  @override
  State<TabbarOne> createState() => TabbarOneState();
}

class TabbarOneState extends State<TabbarOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4, child: Scaffold(
      appBar: AppBar(title: const Text("WhatsApp"),
      backgroundColor: const Color.fromARGB(144, 1, 213, 8),
      bottom: const TabBar(tabs: [
      Icon(Icons.camera),
      Tab(text:("Chat")),
      Tab(text: "Status",),
      Tab(text: "Calls",)
      ]),
      ),    
      body: const TabBarView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Welcome To"),
          Text(""),
          Text("Camera Screen")
        ],),
        Text("Chat Screen"),
        Text("Status Screen"),
        Text("Calls Screen"),
      ]),
    )
    );
  }
}