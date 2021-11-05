import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class IMGSS extends StatefulWidget {
  const IMGSS({ Key? key }) : super(key: key);

  @override
  _IMGSSState createState() => _IMGSSState();
}

class _IMGSSState extends State<IMGSS> {
  get floatingActionButton => null;

  dynamic file;
  Future<void>appCamera() async{
    var picker = ImagePicker();
    var photo = await picker.pickImage(source: ImageSource.camera);
    print(photo);

    setState(() {
      file = File(photo!.path);
    });

    print(file);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text('Menu Package'),
              decoration: BoxDecoration(color: Colors.red),
              ),
              ListTile(title: Text('Video',style: TextStyle(fontSize: 24),),leading: Icon(Icons.videocam_sharp),
              onTap: (){print('Menu video');
              Navigator.pushNamed(context, 'video');},),

              ListTile(title: Text('IMG',style: TextStyle(fontSize: 24),),leading: Icon(Icons.image),
              onTap: (){print('Menu IMG'); 
              Navigator.pushNamed(context, 'IMG');},),
              
              ListTile(title: Text('local',style: TextStyle(fontSize: 24),),leading: Icon(Icons.map),
              onTap: (){print('Menu video'); 
              Navigator.pushNamed(context, 'GPS');},),
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.image),
              SizedBox(
                width: 10,
              ),
              Text("IMG"),
            ],
          ),
        ),
        body: Center
        (child: file == null ? Text('Select image'): Image.file(file),),
        floatingActionButton: FloatingActionButton(onPressed: (){
          print('open camera');
          appCamera();
        },
        child: Icon(Icons.camera),),
    );
  }
}