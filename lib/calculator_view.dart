import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  int sum = 0;
  int sub = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clauclator View"),
      ),
      body: Column(
        children: [
          TextField(
            controller: firstController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          TextField(
            controller: secondController,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
              onPressed: () {
                sum = int.parse(firstController.text) +
                    int.parse(secondController.text);
                setState(() {});
              },
              child: Text("Add")),
          ElevatedButton(
              onPressed: () {
                sub = int.parse(firstController.text) -
                    int.parse(secondController.text);
                setState(() {});
              },
              child: Text("Minus")),
          Text(
            "Sum: $sum ",
            style: TextStyle(fontSize: 30),
          ),Text(
            "Minus: $sub ",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
