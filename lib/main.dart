import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventaris/splash.dart';

void main (){
  runApp(inventaris());
}
class inventaris extends StatefulWidget {
  const inventaris({super.key});

  @override
  State<inventaris> createState() => _inventarisState();
}

class _inventarisState extends State<inventaris> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Splash(),);
  }
}
