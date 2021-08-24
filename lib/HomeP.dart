import 'package:flutter/material.dart';

class HomeP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CHAD"),
        ),
        body: Container(
          color: Colors.pink[300],
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
      
          /*child: Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: 
            [
              Text('Bata1',style: TextStyle(fontSize: 48),),
              Text('Bata2',style: TextStyle(fontSize: 48),),
              Text('Bata3',style: TextStyle(fontSize: 48),),
            ],
          ),*/
          child: Stack
          (
            children: 
            
            [
              Positioned
              (
                top: 20,right: 20,
                child: Text('Deta1',style: TextStyle(fontSize: 48),),
              ),
              Positioned
              (
                bottom: 10,left: 10,
                child: Text('Deta2',style: TextStyle(fontSize: 48),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Colume {
}
