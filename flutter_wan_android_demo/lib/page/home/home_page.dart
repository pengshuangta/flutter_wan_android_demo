import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan_android_demo/http/url_service.dart';
import 'package:flutter_wan_android_demo/model/home_list_model.dart';
import 'package:flutter_wan_android_demo/page/home/banner_page.dart';

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
      body: Container(
        height: 250,
        child: BannerPage(),
      ),
    );
  }
  // 获取文章列表
  requestHomeList(){
    int _page = 0;
    URLService().getHomeList((HomeListModel model){
      // 成功的返回值
      print(model);
    }, (DioError error){
      // 错误的返回值
      print(error.response);
    }, _page);
  }
}

