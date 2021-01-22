import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        //All available pages
        '/home_page': (BuildContext context) => HomePage(),
        '/login_page': (BuildContext context) => LoginPage(),
      },
      home: LoginPage(), //first page displayed
    );
  }
}
