import 'package:flutter/material.dart';
import 'package:fmc/index.dart';
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
      theme: ThemeData.dark(),
      home: ID(),
    );
  }
}
