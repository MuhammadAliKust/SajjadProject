import 'package:flutter/material.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Demo"),
      ),
      body: Center(
        child:
            ElevatedButton(onPressed: () {
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: [
                    Text("First Text"),
                    Text("Second Text"),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Button")),
                    SizedBox(height: 30,)
                  ],),
                );
              });
            }, child: Text("Show Bottom Sheet")),
      ),
    );
  }
}
