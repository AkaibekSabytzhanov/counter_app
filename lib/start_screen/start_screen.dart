import 'dart:async';

import 'package:counter/constants/color/colors.dart';
import 'package:counter/pages/home_page1.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds:1),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/welcome_1.png'),
        ],
      ),
    );
  }
}
