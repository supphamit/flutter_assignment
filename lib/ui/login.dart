import 'package:flutter/material.dart';
import 'register.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  LoginpageState createState() {
    return new LoginpageState();
  }
}


class LoginpageState extends State<Login> {
   String userctl = '';
   String passwordctl = '';
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
              child: Image.asset(
                "assets/img/gb.jpg",
              ),
              padding: EdgeInsets.fromLTRB(65.0, 20.0, 60.0, 0.0),
            ),
              Container(
                  child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "User Id",
                    hintText: 'User Id'),
                onSaved: (value) {
                  userctl = value;
                },
              )),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: "Password",
                        hintText: 'Password'),
                    obscureText: true,
                    onSaved: (value) {
                      passwordctl = value;
                    },
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    child: Text('LOGIN'),
                    color: Theme.of(context).accentColor,
                    splashColor: Colors.blue,
                    onPressed: () {
                      _formKey.currentState.save();
                      if (userctl.isEmpty || passwordctl.isEmpty) {
                        showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                        content: Text("กรุณาระบุ user or password"));
                        });
                      } else if (userctl == 'admin' && passwordctl == 'admin') {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Homepage()));
                      } else {
                         showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                        content: Text("user or password ไม่ถูกต้อง"));
                        }); 
                      }
                    },
                  )),
              Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    child: Text(
                      'Register New Account',
                      style: TextStyle(color: Colors.teal),
                    ),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Register(), ),);
                    },
                  ))
            ])),
      ),
    );
  }

 
}