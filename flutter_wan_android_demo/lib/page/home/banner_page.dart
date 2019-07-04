import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_wan_android_demo/model/home_banner_model.dart';
import 'package:flutter_wan_android_demo/http/url_service.dart';

class BannerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BannerPageState();
  }
}

class BannerPageState extends State<BannerPage>{
  // banner数组
  List<Data> _bannerList = new List();
  // 初始化设置
  @override
  void initState() {
    super.initState();
    _bannerList.add(null);
    // 获取banner数据
    _getBanner();
  }
  // 获取banner
  Future _getBanner() async{
    URLService().getBanner((HomeBannerModel model){
      if (model.data.length > 0) {
        // 通知改变
        setState(() {
          _bannerList = model.data;
        });
      }
    });
  }
  // banner的图片内容
  Widget buildItemImageWidget(BuildContext context,int index){
    // inkWell:给组件添加点击事件，这里是给图片添加点击事件
    return InkWell(
      // 跳转到详情页面
      onTap: (){
        print('点击banner');
      },
      child: Container(
        // child: Image.network(_bannerList[index].imagePath,fit: BoxFit.fill,),
        child: FadeInImage.assetNetwork(
          image: _bannerList[index].imagePath,
          placeholder: 'images/kobe1.jpeg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      // 展示的内容
      itemBuilder: (BuildContext context,int index){
        if (_bannerList[index] == null || _bannerList[index].imagePath == null) {
          // 灰色空白页
          return Container(
            color: Colors.green,
            child: Image.asset('images/kobe1.jpeg',fit: BoxFit.fill,),
          );
        } else {
          // 网络图片
          return buildItemImageWidget(context, index);
        }
      },
      // 数量
      itemCount: _bannerList.length,
      // 自动播放
      autoplay: true,
      // 分页，如：iOS的：pageControl
      pagination: new SwiperPagination(),
    );
  }
}