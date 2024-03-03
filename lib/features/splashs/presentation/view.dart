import 'package:dalel/core/functions/navigate_push.dart';
import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Dalel',
        style: TextStyles.pacifico400style50,
      )),
    );
  }
}

void delayedNavigate(context) {
  Future.delayed(
    const Duration(
      seconds: 2,
    ),
    () {
      pushReplacementNavigate(context, '/onBoarding');
    },
  );
}
