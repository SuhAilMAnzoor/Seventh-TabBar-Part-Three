import 'package:flutter/material.dart';

class TabbarTwo extends StatefulWidget {
  const TabbarTwo({super.key});

  @override
  State<TabbarTwo> createState() => _TabbarTwoState();
}

class _TabbarTwoState extends State<TabbarTwo> {
  static const textStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("WhatsApp",
        style: TextStyle(color: Colors.black),),
        bottom: TabBar(
          indicator: ShapeDecoration(
              color: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
          tabs: const [
          Tab(
              text: "Chat"),
          Tab(text: 'Status',),
          Tab(text: "Calls",),
          ]
          ),
      ),
      body: const TabBarView(children: [
        Center(child: Text("Chat Screen", style: textStyle)),
        Center(child: Text("Status", style: textStyle,)),
        Center(child: Text("Calls", style: textStyle,)),
      ]),
    )
    );
  }
}