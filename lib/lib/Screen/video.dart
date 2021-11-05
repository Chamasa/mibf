import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({ Key? key }) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
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
              Icon(Icons.videocam_sharp),
              SizedBox(
                width: 10,
              ),
              Text("Video"),
            ],
          ),
        ),body:Center
        (child:BetterPlayer.file("https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"),),
    );
  }
}