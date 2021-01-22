import 'package:flutter/material.dart';
import 'package:login_demo_4/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.indigo])),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
        child: Center(
          child: Column(
            children: [
              Spacer(
                flex: 3,
              ),
              SizedBox(
                height: 200.0,
                child: Image.asset(
                  "assets/images/avatar.png",
                  fit: BoxFit.contain,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              TextField(
                //email
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                onChanged: null,
                onSubmitted: null,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Email Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0))),
              ),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(8),
                ),
              ),
              TextField(
                //password
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                onChanged: null,
                onSubmitted: null,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0))),
              ),
              Spacer(
                flex: 2,
              ),
              SizedBox(
                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(170, 15, 170, 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home_page');
                  },
                  color: Colors.lightBlueAccent,
                  child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              TextButton(
                child: Text('Forgot Password'),
                onPressed: null,
              ),
              Spacer(
                flex: 1,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
