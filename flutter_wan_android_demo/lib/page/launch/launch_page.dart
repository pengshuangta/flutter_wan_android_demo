import 'package:flutter/material.dart';
import 'package:flutter_wan_android_demo/bottombaritem_app.dart';

class LanuchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LanuchPageState();
  }
}

class LanuchPageState extends State<LanuchPage> {
  // 重写initState 一般初始化设置数据
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      _getHasSkip();
    });
    super.initState();
  }

  void _getHasSkip() async {
    await Navigator.of(context).pushAndRemoveUntil(
        new MaterialPageRoute(builder: (context) => BottomBarItemAPP()),
        (route) => route == null);
  }

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Image.asset('images/kobe2.jpeg',fit: BoxFit.fill,),
    // );
    return Image.asset(
      'images/kobe2.jpeg',
      fit: BoxFit.fill,
    );
  }
}
