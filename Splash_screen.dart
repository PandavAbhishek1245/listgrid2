import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Timer(Duration(seconds: 5), () {Navigator.pushNamed(context, '/First');});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPckZGKXqVAko2VCNSDKTNvrkmSsS4TmlyTA&usqp=CAU",fit: BoxFit.fill,)),
    );
  }
}
