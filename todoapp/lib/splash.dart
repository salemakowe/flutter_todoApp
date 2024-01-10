import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todoapp/constants/mytexts.dart';
import 'package:todoapp/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    splashTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splash(),
    );
  }

  splash() {
    return Center(
      child: SizedBox(
        child: Lottie.network(
          MyText.splashUrl,
        ),
      ),
    );
  }

  splashTimer() {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }
}
