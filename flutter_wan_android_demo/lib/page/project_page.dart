import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProjectPageState();
  }
}

class ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          child: Text('这是项目'),
          padding: EdgeInsets.all(10.0),
          color: Colors.red,
          onPressed: () {
            print('这是项目');
          },
        ),
      ),
    );
  }
}
