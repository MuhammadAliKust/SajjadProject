import 'package:demo_app/bottom_bar_view.dart';
import 'package:demo_app/dialog_box_demo.dart';
import 'package:demo_app/grid_view.dart';
import 'package:demo_app/image_demo.dart';
import 'package:demo_app/list_view_demo.dart';
import 'package:demo_app/login.dart';
import 'package:demo_app/multiple_selection_demo.dart';
import 'package:demo_app/page_view_demo.dart';
import 'package:demo_app/screen_a.dart';
import 'package:demo_app/single_selection_demo.dart';
import 'package:demo_app/tabbar_view.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewDemo(),
    );
  }
}
