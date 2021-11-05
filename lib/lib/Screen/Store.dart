import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fmc/Screen/viewdata.dart';

import '../contant.dart';
import 'adddata.dart';

class Store extends StatefulWidget {
  const Store({ Key? key }) : super(key: key);

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    Future<void> logout() async 
    {
      await FirebaseAuth.instance.signOut();
    }
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
              onTap: (){print('Menu GPS'); 
              Navigator.pushNamed(context, 'GPS');},),

              ListTile(title: Text('Store',style: TextStyle(fontSize: 24),),leading: Icon(Icons.store),
              onTap: (){print('Menu store'); 
              Navigator.pushNamed(context, 'Std');},),

              ListTile(title: Text('Logout',style: TextStyle(fontSize: 24),),leading: Icon(Icons.exit_to_app),
              onTap: (){print('LOGOUT'); logout(); 
              Navigator.of(context).pop();
              Navigator.pushNamed(context, 'Login');},),
            ],
          ),
        );
    return DefaultTabController(
       length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Store"),
        ),
        body: TabBarView(
          children: [
            AddData(),
            ViewData(),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.pink,
          child: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: "Add Data",
              ),
              Tab(
                text: "View Data",
              ),
            ],
          ),
        ),
      ),
    );
  }
}