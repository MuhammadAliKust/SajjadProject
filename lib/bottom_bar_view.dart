import 'package:demo_app/image_demo.dart';
import 'package:demo_app/login.dart';
import 'package:demo_app/page_view_demo.dart';
import 'package:flutter/material.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int selectedIndex = 0;

  List<Widget> screenList = [
    ImageDemoView(),
    PageViewDemo(),
    LoginView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Bar View"),
      ),
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorte'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profie'),
        ],
        currentIndex: selectedIndex,
        onTap: (val) {
          selectedIndex = val;
          setState(() {});
        },
      ),
    );
  }
}
