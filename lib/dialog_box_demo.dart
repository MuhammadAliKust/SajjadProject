import 'package:flutter/material.dart';

class DialogBoxDemo extends StatelessWidget {
  const DialogBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box Demo"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Message"),
                      content: Text("This is our first dialog"),
                      actions: [
                        TextButton(onPressed: () {}, child: Text("Yes")),
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text("No")),
                      ],
                    );
                  });
            },
            child: Text("Show Dialog Box")),
      ),
    );
  }
}
