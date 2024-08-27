import 'package:flutter/material.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar Demo"),
            bottom: TabBar(tabs: [
              Icon(Icons.home),
              Icon(Icons.favorite),
              Icon(Icons.person),
              Icon(Icons.person),
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("Home"),
            ),
            Center(
              child: Text("Favorite"),
            ),
            Center(
              child: Text("Profile"),
            ), Center(
              child: Text("Profile"),
            ),
          ]),
        ));
  }
}
