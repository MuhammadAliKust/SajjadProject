import 'package:flutter/material.dart';

class MultipleSelectionListViewDemo extends StatefulWidget {
  const MultipleSelectionListViewDemo({super.key});

  @override
  State<MultipleSelectionListViewDemo> createState() =>
      _MultipleSelectionListViewDemoState();
}

class _MultipleSelectionListViewDemoState
    extends State<MultipleSelectionListViewDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection List View Demo"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                if(selectedIndex.contains(i)){
                  selectedIndex.remove(i);
                }else{

                  selectedIndex.add(i);
                }
                setState(() {});
              },
              leading: Icon(Icons.notifications),
              title: Text("Loop Index: $i Selected Index: $selectedIndex"),
              subtitle: Text("Notification Sub Title"),
              trailing: Icon(Icons.delete),
              tileColor:
                  selectedIndex.contains(i) ? Colors.green : Colors.white,
            );
          }),
    );
  }
}
