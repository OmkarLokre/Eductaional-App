import 'dart:async';

import 'package:flutter/material.dart';
import 'main.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Jkb()));

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Container(
        width: 10000,
        height: 10000,
        color: Colors.black,
        child: 
        Center(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            width: 290,
            height: 200,
            child: Card(
              elevation: 30,
              shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(150)),
              child: ClipRRect(borderRadius:
              BorderRadius.circular(50),child: Image.asset('assets/images/jkb_logo.png',fit: BoxFit.fill,)),
            ),
          ),
        ),
      ),
      ),
    );
  }
}
