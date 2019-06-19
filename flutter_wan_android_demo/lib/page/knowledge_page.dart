import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KnowledgePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KnowledgePageState();
  }
}

class KnowledgePageState extends State<KnowledgePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          child: Text('这是体系'),
          padding: EdgeInsets.all(10.0),
          color: Colors.red,
          onPressed: () {
            print('这是体系');
          },
        ),
      ),
    );
  }
}
