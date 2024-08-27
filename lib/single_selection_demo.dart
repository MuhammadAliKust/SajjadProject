import 'package:flutter/material.dart';

class SingleSelectionListViewDemo extends StatefulWidget {
  const SingleSelectionListViewDemo({super.key});

  @override
  State<SingleSelectionListViewDemo> createState() =>
      _SingleSelectionListViewDemoState();
}

class _SingleSelectionListViewDemoState
    extends State<SingleSelectionListViewDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection List View Demo"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                selectedIndex = i;
                setState(() {});
              },
              leading: Icon(Icons.notifications),
              title: Text("Loop Index: $i Selected Index: $selectedIndex"),
              subtitle: Text("Notification Sub Title"),
              trailing: Icon(Icons.delete),
              tileColor: selectedIndex == i ? Colors.green : Colors.white,
            );
          }),
    );
  }
}
