import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';


class MAPS extends StatefulWidget {
  const MAPS({ Key? key }) : super(key: key);

  @override
  _MAPSState createState() => _MAPSState();
}

class _MAPSState extends State<MAPS> {
  dynamic latitude ="";
  dynamic longitude="";

  @override
  void initState()
  {
    // TODO: impLement initState
    super.initState();
    getLocation();
  }

  Future<void>getLocation() async
  {
   var location = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    var address = await placemarkFromCoordinates(37.4217873, -122.0839886);
    print(address);
   
    setState(() {

    latitude ='${location.latitude}';
    longitude = '${location.longitude}';
    });
    print(location);
    print(location.latitude);
    print(location.longitude);

  }

  
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
              Icon(Icons.map),
              SizedBox(
                width: 10,
              ),
              Text("GPS"),
            ],
          ),
        ),body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ละติจูด' + latitude, style: TextStyle(fontSize: 28),),
            Text('ลองจิจูด' + longitude, style: TextStyle(fontSize: 28),),
          ],
        )
          
        ,),
    );
  }
}