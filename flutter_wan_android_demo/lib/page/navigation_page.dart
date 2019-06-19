import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationPageState();
  }
}

class NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          child: Text('这是导航'),
          padding: EdgeInsets.all(10.0),
          color: Colors.red,
          onPressed: () {
            print('这是导航');
          },
        ),
      ),
    );
  }
}
