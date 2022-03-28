import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopingdark/screens/loginscreen.dart';
import 'package:shopingdark/screens/sinupscreen.dart';


void main()  {


  runApp( MyApp());

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Loginscreen.id,
      routes: {

        Loginscreen.id:(context)=>Loginscreen(),

        Sinupscreen.id:(context)=> Sinupscreen()
              },
    );
  }
}
