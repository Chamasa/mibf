import 'package:flutter/material.dart';
import 'package:fmc/backend/database.dart';
import 'package:fmc/contant.dart';



class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  
var name, age, surname, email, password;
final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurname(),
                txtEmail(),
                txtPassword(),
                btnS(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: "ชื่อ",
          icon: Icon(Icons.person),
          hintText: "ใส่ชื่อ",
        ),
        keyboardType: TextInputType.name,
        validator: (val) {
          if (val!.length < 3) {
            return 'กรุญากรอกชื่อให้มากกว่า 3 ตัวอักษร';
          }
        },
        onSaved: (val) {
          name = (val);
        },
      ),
    );
  }

  Widget txtSurname() {
    return Container(
        margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: TextFormField(
          style: TextStyle(
            color: sColor,
            fontSize: 24,
          ),
          decoration: InputDecoration(
            labelText: "นามสกุล",
            icon: Icon(Icons.person),
            hintText: "ใส่นามสกุล",
          ),
          keyboardType: TextInputType.name,
          validator: (val2) {
            if (val2!.isEmpty) {
              return 'กรุญากรอกนามสกุล';
            } else if (val2.length < 3) {
              return 'กรุญากรอกชื่อให้มากกว่า 3 ตัวอักษร';
            }
          },
          onSaved: (val2) {
            surname = (val2);
          },
        ));
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
          style: TextStyle(
            color: sColor,
            fontSize: 24,
          ),
          decoration: InputDecoration(
            labelText: "Email",
            icon: Icon(Icons.email),
          ),
          keyboardType: TextInputType.emailAddress,
          validator: (val3) {
            if (!(val3!.contains('@'))) {
              return 'กรุญากรอก Email';
            } else if (!(val3.contains('.'))) {
              return 'กรุญากรอก Email';
            }
          },
          onSaved: (val3) {
            email = (val3);
          }),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
          style: TextStyle(
            color: sColor,
            fontSize: 24,
          ),
          decoration: InputDecoration(
            labelText: "Password",
            icon: Icon(Icons.password),
            hintText: "ใส่หรัสผ่าน",
          ),
          obscureText: true,
          onSaved: (val4) {
            password = (val4);
          }),
    );
  }

  Widget btnS() {
    return ElevatedButton(
        child: Text('Submit'),
        onPressed: () {
          if (formkey.currentState!.validate()) {
            formkey.currentState!.save();
            var LBD = localDB();
            LBD.REG(name, surname, email, password);
            Navigator.pushNamed(context, 'Login');
          }
        });
  }
}
