import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DrawerPageState();
  }
}

class DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // 不然在会有空白，时间栏高度的空白
        children: <Widget>[
          // 头部
          UserAccountsDrawerHeader(
            // 头像，并添加点击事件
            currentAccountPicture: InkWell(
              // 圆角
              child: CircleAvatar(
                backgroundImage: AssetImage('images/kobe1.jpeg'),
              ),
              onTap: (){
                print('点击了头像');
              },
            ),
            // 用户名，并添加点击事件
            accountName: InkWell(
              child: Text('未登录',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
              onTap: (){
                print('点击了用户名');
              },
            ),
          ),
          // 我的收藏
          ListTile(
            leading: Icon(Icons.collections,size: 22.0,),
            title: Text('我的收藏',textAlign: TextAlign.left,),
            onTap: (){
              print('点击了我的收藏');
            },
          ),
          // 常用网站
          ListTile(
            leading: Icon(Icons.web,size: 22.0,),
            title: Text('常用网站',textAlign: TextAlign.left,),
            onTap: (){
              print('点击了常用网站');
            },
          ),
          // 主题
          ListTile(
            leading: Icon(Icons.settings,size: 22.0,),
            title: Text('主题',textAlign: TextAlign.left,),
            onTap: (){
              print('点击了主题');
            },
          ),
          // 分享
          ListTile(
            leading: Icon(Icons.share,size: 22.0,),
            title: Text('分享',textAlign: TextAlign.left,),
            onTap: (){
              print('点击了分享');
            },
          ),
          // 妹子图
          ListTile(
            leading: Icon(Icons.directions_bike,size: 22.0,),
            title: Text('妹子图',textAlign: TextAlign.left,),
            onTap: (){
              print('点击了妹子图');
            },
          ),
          // 关于作者
          ListTile(
            leading: Icon(Icons.info,size: 22.0,),
            title: Text('关于作者',textAlign: TextAlign.left,),
            onTap: (){
              print('点击了关于作者');
            },
          ),
        ],
      ),
    );
  }
}
