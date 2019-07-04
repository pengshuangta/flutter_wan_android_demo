import 'package:dio/dio.dart';
import 'package:flutter_wan_android_demo/http/url.dart';
import 'package:flutter_wan_android_demo/http/dio_manager.dart';
import 'package:flutter_wan_android_demo/model/home_banner_model.dart';
import 'package:flutter_wan_android_demo/model/home_list_model.dart';
/*
**  获取接口请求数据类
*/
class URLService{
  /*
  **  获取首页banner数据
  */
  void getBanner(Function callback) async{
    DioManager.singleton.dio.get(URL.HOME_BARNER_URL,options:_getOptions()).then((response){
      callback(HomeBannerModel.fromJson(response.data));
    });
  }
  /*
  **  获取首页文章列表数据
  */
  void getHomeList(Function callback,Function errback,int page){
    DioManager.singleton.dio.get(URL.HOME_ARTICLE_LIST_URL + "$page/json",options:_getOptions()).then((response){
      callback(HomeListModel.fromJson(response.data));
      print(response);
    }).catchError((e){
      errback(e);
      print(e);
    });
  }
  
  /*
  **  获取cookie 一定要改
  */
  Options _getOptions(){
    Map<String,String> optionsMap = new Map();
    List<String> cookies = new List();
    optionsMap["Cookie"] = cookies.toString();
    return Options(headers: optionsMap);
  }
}