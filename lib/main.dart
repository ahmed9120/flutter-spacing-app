import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:space_app/core/widgets/screen_two.dart';
import 'package:space_app/core/widgets/screen_zero.dart';
import 'core/models/planets.dart';
import 'core/widgets/screen_one.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ScreenZero() ,
    );
  }
}

