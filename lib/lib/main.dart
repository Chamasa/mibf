import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fmc/Screen/GPS.dart';
import 'package:fmc/Screen/IMG.dart';
import 'package:fmc/Screen/Store.dart';
import 'package:fmc/Screen/firebaselogin.dart';
import 'package:fmc/Screen/reg.dart';
import 'package:fmc/Screen/video.dart';
import 'package:fmc/contant.dart';
import 'package:fmc/index.dart';
import "package:fmc/contant.dart";
import "package:fmc/Screen/login.dart";

import 'Screen/FireBS.dart';
import 'Screen/dashB.dart';
//import 'package:fmc/HomeP.dart';

Future <void> main() async{
  //กำหนดค่าเริ่มต้นในการเชื่อมต่อไปยัง firebase โดยใช้ package Firebase Core
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
        'Login' : (context) => Firebaselogin(),
        'Register': (context) => FirbaseRegister(),
        'dashB' : (context) => DashB(),
        'video' : (context) => Video(),
        'IMG' : (context) => IMGSS(),
        'GPS' : (context) => MAPS(),
        'Std' : (context) => Store(),
      },
    
      home: ID(),
    );
  }
}
