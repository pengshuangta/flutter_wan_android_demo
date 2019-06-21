import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:flutter_wan_android_demo/bottombaritem_app.dart';
import 'package:flutter_wan_android_demo/define/common_import.dart';
import 'package:package_info/package_info.dart';
class AppIntroNavPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AppIntroNavPageState();
  }
}

class AppIntroNavPageState extends State<AppIntroNavPage>{
  // 定义引导页数组
  List<Slide> slides = new List();
  // 重写initState 一般做widget的初始化赋值
  @override
  void initState() {
    super.initState();
    // 第一张
    slides.add(
      Slide(
        title: 'flutter',
        styleTitle: TextStyle(color: Colors.black),
        description: 'Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。',
        styleDescription: TextStyle(color: Colors.white,fontSize: 20.0,),
        marginDescription: EdgeInsets.all(10.0),
        // 渐变颜色
        colorBegin: Colors.blue,
        colorEnd: Colors.green,
        // 渐变颜色的方向
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
      ),
    );
    // 第二张
    slides.add(
      Slide(
        title: 'flutter',
        styleTitle: TextStyle(color: Colors.black),
        description: '这是一款用flutter仿写玩Android的app',
        styleDescription: TextStyle(color: Colors.white,fontSize: 20.0,),
        marginDescription: EdgeInsets.all(10.0),
        // 渐变颜色
        colorBegin: Color(0xffFFA500),
        colorEnd: Color(0xff7FFFD4),
        // 渐变颜色的方向
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
      ),
    );
    // 第三张
    slides.add(
      Slide(
        title: 'flutter',
        styleTitle: TextStyle(color: Colors.black),
        description: '欢迎使用',
        styleDescription: TextStyle(color: Colors.white,fontSize: 20.0,),
        marginDescription: EdgeInsets.all(10.0),
        // 渐变颜色
        colorBegin: Color(0xffFFA500),
        colorEnd: Color(0xff7FFFD4),
        // 渐变颜色的方向
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
      ),
    );
  }
  /*
  **  点击 进入/跳过 按钮事件 - 进入app
  */
  void onDonePress(){
    // 1、写入版本号
    _setAppVersionNumber();
    // 2、进入app
    Navigator.of(context).pushAndRemoveUntil(
    new MaterialPageRoute(builder: (context) => BottomBarItemAPP()),
    (route) => route == null);
  }

  /*
  **  写入版本号
  */
  void _setAppVersionNumber() async{
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(SystemKey.app_version, packageInfo.version);
  }
  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      onSkipPress: this.onDonePress,
      nameSkipBtn: '跳过',
      nameNextBtn: 'next',
      nameDoneBtn: '进入',
    );
  }
}

