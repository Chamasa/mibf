import 'package:flutter/material.dart';
import "package:fmc/contant.dart";

class ID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        //color: Colors.yellow,
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Image.asset(
              "asset/images/LOGO.png",
              width: size.width * 0.2,
              height: size.height * 0.2,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              'Welcome to KMUTNB',
              style: TextStyle(
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1494949649109-ecfc3b8c35df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  primary: pColor,
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              child: Text('LOGIN'),
              onPressed: () {
                print("LOGIN!!");
                Navigator.pushNamed(context, 'Login');
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  primary: Colors.amber[900],
                  padding: EdgeInsets.all(20.0),
                  shape: StadiumBorder()),
              child: Text('SignUP'),
              onPressed: () {
                print("SignUp");
                Navigator.pushNamed(context, 'Register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
