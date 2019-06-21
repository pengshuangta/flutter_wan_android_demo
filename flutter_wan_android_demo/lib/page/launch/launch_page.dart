import 'package:flutter/material.dart';
import 'package:flutter_wan_android_demo/bottombaritem_app.dart';
import 'package:flutter_wan_android_demo/define/common_import.dart';
import 'package:flutter_wan_android_demo/page/app_intro_nav/app_intro_nav_page.dart';

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
  /*
  **  启动图执行完后的事件
  */
  void _getHasSkip() async {
    // 缓存的单例
    SharedPreferences pref = await SharedPreferences.getInstance();
    String preVersion = pref.getString(SystemKey.app_version);
    // 获取当前app的版本号
    PackageInfo info = await PackageInfo.fromPlatform();
    String infoVersion = info.version;
    // 一定要改
    if (preVersion == infoVersion || preVersion == null) {
      // 经过引导页
      Navigator.of(context).pushAndRemoveUntil(
      new MaterialPageRoute(builder: (context) => AppIntroNavPage()),
      (route) => route == null);
    } else {
      // 进入主页
      Navigator.of(context).pushAndRemoveUntil(
      new MaterialPageRoute(builder: (context) => BottomBarItemAPP()),
      (route) => route == null);
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Image.asset(
      'images/kobe2.jpeg',
      fit: BoxFit.fill,
    );
  }
}
