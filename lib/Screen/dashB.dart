import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fmc/contant.dart';
import 'package:fmc/model/Actc.dart';
import 'package:http/http.dart' as http;

class DashB extends StatefulWidget {
  const DashB({ Key? key }) : super(key: key);

  @override
  _DashBState createState() => _DashBState();
  
  
}



class _DashBState extends State<DashB> {
  @override
  var data;
  void initState(){
    super.initState();
    callAct();
  }

  Future<void> callAct() async {
  print("Hello world");

  var url = Uri.parse("https://www.boredapi.com/api/activity");
  var reponse = await http.get(url);
  
  print(reponse.statusCode);
  print(reponse.body);
  setState(() {
    data = cedFromJson(reponse.body);
    print(data.activity);
    print(data.type);
    print(data.participants);
    print(data.price);
    print(data.link);
    print(data.key);
    print(data.accessibilit);
  });
 
 

} 
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.api_sharp),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ),
        body: Center(
          child: Column(children: [
            Container( color: pColor,
            margin: EdgeInsets.all(10), 
            padding: EdgeInsets.all(10),
            child: Text(data?.activity ?? "กำลังโหลด",style: TextStyle(fontSize: 24),)),
            Container(
              color: pColor,
              margin: EdgeInsets.all(10), 
              padding: EdgeInsets.all(10),
              child: Text(data?.type ?? "กำลังโหลด",style: TextStyle(fontSize: 24))),
            Container(
              color: pColor,
              margin: EdgeInsets.all(10), 
              padding: EdgeInsets.all(10),
              child: Text('${data?.participants ?? "กำลังโหลด"}',style: TextStyle(fontSize: 24))),
              Container(
              color: pColor,
              margin: EdgeInsets.all(10), 
              padding: EdgeInsets.all(10),
              child: Text('${data?.price ?? "กำลังโหลด"}',style: TextStyle(fontSize: 24))),
              Container(
              color: pColor,
              margin: EdgeInsets.all(10), 
              padding: EdgeInsets.all(10),
              child: Text(data?.link ?? "กำลังโหลด",style: TextStyle(fontSize: 24))),
              Container(
              color: pColor,
              margin: EdgeInsets.all(10), 
              padding: EdgeInsets.all(10),
              child: Text(data?.key ?? "กำลังโหลด",style: TextStyle(fontSize: 24))),
              Container(
              color: pColor,
              margin: EdgeInsets.all(10), 
              padding: EdgeInsets.all(10),
              child: Text('${data?.accessibility ?? "กำลังโหลด"}',style: TextStyle(fontSize: 24))),
            ],
          ),
        ),
      ),
    );
      
  }
}