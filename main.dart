import 'package:flutter/material.dart';
import 'package:listgrid2ui/Splash_screen.dart';
import 'package:listgrid2ui/fifth_screen.dart';
import 'package:listgrid2ui/forth_screen.dart';
import 'package:listgrid2ui/frist_screen.dart';
import 'package:listgrid2ui/second_screen.dart';
import 'package:listgrid2ui/seven_screen.dart';
import 'package:listgrid2ui/six_screen.dart';
import 'package:listgrid2ui/third_screen.dart';
import 'package:sizer/sizer.dart';

import 'eight_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>Sizer(builder:(context,orientation,deviceType) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Listgrid2uiPractice(),
      routes: {
        '/':(context)=>SplashScreen(),
        '/First':(context)=>FristScreen(),
        '/second':(context)=>SecondScreen(),
        '/Third':(context)=>ThirdScreen(),
        '/Forth':(context)=>ForthScreen(),
        '/Fifth':(context)=>FifthScreen(),
        '/Six':(context)=>SixScreen(),
        '/Seven':(context)=>SevenScreen(),
        '/Eight':(context)=>EightScreen(),
      },
    );
  }
  );

}
