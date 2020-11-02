import 'package:flutter/material.dart';

import '../main.dart';

class TabChild extends StatefulWidget{
  TabChild(): super();

  _TabChildState createState() => _TabChildState();
}

class _TabChildState extends State<TabChild>{
  int _currentIndex = 0;

  List<Widget> pageList =[Home(), Category(), Setting()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 25.0,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置')
          )
        ],
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('Home');
  }
}
class Category extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('Category');
  }
}
class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('Setting');
  }
}