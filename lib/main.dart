import 'package:flutter/material.dart';
import 'package:fmc/Screen/reg.dart';
import 'package:fmc/contant.dart';
import 'package:fmc/index.dart';
import "package:fmc/contant.dart";
import "package:fmc/Screen/login.dart";
import "package:fmc/Screen/login.dart";

import 'Screen/dashB.dart';
//import 'package:fmc/HomeP.dart';

void main() {
  runApp(MYAPP());
}

class MYAPP extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      title: 'Chad',
      theme: ThemeData(
          primaryColor: pColor,
          secondaryHeaderColor: sColor,
      ),
      routes :{ 
        'Login' : (context) => Login(),
        'Register': (context) => Register(),
        'dashB' : (context) => DashB(),
      },
    
      home: ID(),
    );
  }
}
