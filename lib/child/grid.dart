import 'package:flutter/material.dart';

class GridChild extends StatelessWidget{
  List<Widget> _getListData() {
    List<Widget> list = new List();

    for(var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Colors.blue,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3, // 水平Widget之间的距离
      crossAxisSpacing: 20, // 垂直Widget之间的距离
      mainAxisSpacing: 20,
      childAspectRatio: 0.7, // 宽度和高度的比例
      padding: EdgeInsets.all(10),
      children: this._getListData(),
    );
  }
  
}