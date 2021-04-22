import 'package:flutter/material.dart';
import 'package:nlw_next_level5/challenge/challenge_page.dart';
import 'package:nlw_next_level5/home/home_Page.dart';
import 'package:nlw_next_level5/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
