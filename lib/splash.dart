import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inventaris/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late Timer t;

  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 4),
      (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    t.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/alightmotion.png'),
            SizedBox(height: 5),
            Text('SELAMAT DATANG DI APK', style: TextStyle(fontSize: 20)),
            SizedBox(height: 5),
            Text('INVENTARIS KELAS', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
