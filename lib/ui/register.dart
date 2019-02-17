import 'package:flutter/material.dart';
import 'register.dart';
import 'home.dart';

class Register extends StatefulWidget {
  @override
  LoginpageState createState() {
    return new LoginpageState();
  }
}


class LoginpageState extends State<Register> {
   String userid = '';
   String password = '';
   String confirm = '';
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
              Container(
              padding: EdgeInsets.fromLTRB(65.0, 20.0, 60.0, 0.0),
            ),
              Container(
                margin: const EdgeInsets.only(top: 70),
                  child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Email",
                    hintText: 'Email'),
                onSaved: (value) {
                  userid = value;
                },
              )),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: "Password",
                        hintText: 'Password'),
                    obscureText: true,
                    onSaved: (value) {
                      password = value;
                    },
                  )),
              
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: "Password Confirm",
                        hintText: 'Password Confirm'),
                    obscureText: true,
                    onSaved: (value) {
                      password = value;
                    },
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    child: Text('Register'),
                    color: Theme.of(context).accentColor,
                    splashColor: Colors.blue,
                    onPressed: () {
                          _formKey.currentState.save();
                          if (userid == '' ||
                              password == '' ||
                              confirm == '') {
                            showDialog(
                     context: context,
                    builder: (context) {
                        return AlertDialog(
                        content: Text("กรุณาระบุข้อมูลให้ครบถ้วน"));
                        });
                          }
                          if (userid == 'admin') {
                             showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                        content: Text("User นี้มีอยู่ในระบบแล้ว"));
                        });
                          }
                          if (userid != '' &&
                              password != '' &&
                              confirm != '' &&
                              userid != 'admin') {
                            Navigator.pop(context);
                          }
                        },
                  )),
            ])),
      ),
    );
  }

 
}