import 'package:flutter/material.dart';
import 'package:flutter_wan_android_demo/page/home/home_page.dart';
import 'package:flutter_wan_android_demo/page/knowledge/knowledge_page.dart';
import 'package:flutter_wan_android_demo/page/public/public_page.dart';
import 'package:flutter_wan_android_demo/page/navigation/navigation_page.dart';
import 'package:flutter_wan_android_demo/page/project/project_page.dart';
import 'package:flutter_wan_android_demo/page/drawer/drawer_page.dart';


class BottomBarItemAPP extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BottomBarItemAPPState();
  }
}

class BottomBarItemAPPState extends State<BottomBarItemAPP>{
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitleWidget(_currentIndex)),// 导航栏标题
        // 导航栏右边按钮
        actions: _actions(_currentIndex),
      ),
      body: currentPageWidget(_currentIndex),// 显示的页面内容
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomBarItems(),// imtes
        // 点击item
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,// 当前索引的item
        type: BottomNavigationBarType.fixed,// item的模式：有两种模式：可自行修改调试
      ),
      // 侧滑栏
      drawer: DrawerPage(),
    );
  }
}

/*
** 页面标题
*/
String _pageTitleWidget(int index){
  List<String> titles = <String>[
    '首页',
    '体系',
    '公众号',
    '导航',
    '项目',
  ];
  return titles[index];
}

/*
** 页面标题 实现方法一
*/
Widget currentPageWidget(int index){
  List<Widget> pages = <Widget>[
    HomePage(),
    KnowledgePage(),
    PublicPage(),
    NavigationPage(),
    ProjectPage(),
  ];
  return pages[index];
}

/*
** 页面标题 实现方法二
*/
Widget _currentPageFunTowWidget(int index){
  List<Widget> pages = <Widget>[
    HomePage(),
    KnowledgePage(),
    PublicPage(),
    NavigationPage(),
    ProjectPage(),
  ];
  return IndexedStack(children:pages,index: index,);
}

/*
** items
*/
List<BottomNavigationBarItem> _bottomBarItems(){
  List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      title: Text('首页'),
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      title: Text('体系'),
      icon: Icon(Icons.assessment),
    ),
    BottomNavigationBarItem(
      title: Text('公众号'),
      icon: Icon(Icons.chat),
    ),
    BottomNavigationBarItem(
      title: Text('导航'),
      icon: Icon(Icons.navigation),
    ),
    BottomNavigationBarItem(
      title: Text('项目'),
      icon: Icon(Icons.book),
    ),
  ];
  return items;
}

/*
** 导航栏右边按钮
*/
List<Widget> _actions(int index){
  List<Widget> actions = <Widget>[
    IconButton(
      icon: Icon(Icons.search),
      onPressed: (){
        print('点击搜索');
      },
    ),
  ];
  if (index == 1) {
    actions.removeAt(0);
    return actions;
  }
  return actions;
}
