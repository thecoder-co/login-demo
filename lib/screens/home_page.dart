import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      children: [
                        SizedBox(
                          height: 100.0,
                          child: Image.asset(
                            "assets/images/avatar.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Idunnuoluwa',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    Spacer(),
                    Card(
                      color: Colors.purple[700],
                      elevation: 10,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            )));
  }
}
