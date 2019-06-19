import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          child: Text('这是首页'),
          padding: EdgeInsets.all(10.0),
          color: Colors.red,
          onPressed: () {
            print('这是首页');
          },
        ),
      ),
    );
  }
}
