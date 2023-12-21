import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todoapp/constants/mytexts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
}
