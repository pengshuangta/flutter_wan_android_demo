import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PublicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PublicPageState();
  }
}

class PublicPageState extends State<PublicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          child: Text('这是公众号'),
          padding: EdgeInsets.all(10.0),
          color: Colors.red,
          onPressed: () {
            print('这是公众号');
          },
        ),
      ),
    );
  }
}
