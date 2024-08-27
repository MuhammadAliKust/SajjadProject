import 'package:flutter/material.dart';

class ImageDemoView extends StatelessWidget {
  const ImageDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Column(
        children: [
         Image.asset('assets/images/1.png'),
             SizedBox(height: 10,),
          Text("Title"),
          Text("Sub Title"),
        ],
      ),
    );
  }
}
