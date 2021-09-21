import 'package:flutter/material.dart';
import 'package:fmc/Screen/dashB.dart';
import 'package:fmc/backend/database.dart';
import '../contant.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email, password;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                width: size.width * 0.9,
                child: TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.alternate_email,
                      color: pColor,
                      size: size.height * 0.05,
                    ),
                    hintText: "Email",
                  ),
                  onSaved: (val) {
                    email = val;
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                width: size.width * 0.9,
                child: TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: pColor,
                      size: size.height * 0.05,
                    ),
                    hintText: "Password",
                  ),
                  onSaved: (val) {
                    password = val;
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  formKey.currentState!.save();
                  //print("$email $password");
                  var loc = localDB();
                  loc.Login(email, password).then((val) {
                    if (val) {
                      print('sus');
                      Navigator.pushNamed(context, 'dashB');
                    } else {
                      print('fall');
                      final Bar = SnackBar(content: Text('ไม่พบข้อมูล'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(Bar);
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
