import 'package:flutter/material.dart';
import 'package:flutter_app/data/listData.dart';

class ListChild extends StatelessWidget{

  Widget _getListData(context, index){
    return ListTile(
      leading: Image.network(listData[index]["image"]),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["subTitle"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    /**
     * TODO: implement build 垂直列表
     */
    // return ListView(
    //   padding: EdgeInsets.all(10),
    //   children: <Widget>[
    //     ListTile(
    //       // leading: Icon(Icons.settings, size: 40, color: Colors.yellow),
    //       leading: Image.network('https://pic2.58cdn.com.cn/p1/big/n_v26d53fadb15e74fbea1f1659c00c3727e.jpg'),
    //       title: Text(
    //           '大众 高尔夫GTI 2016款 2.0TSI GTI',
    //         style: TextStyle(
    //           fontSize: 20
    //         ),
    //       ),
    //       subtitle: Text('2017年 5万公里'),
    //     ),
    //     Image.network('https://pic2.58cdn.com.cn/p1/big/n_v26d53fadb15e74fbea1f1659c00c3727e.jpg'),
    //     Container(
    //       height: 20,
    //     ),
    //     ListTile(
    //       // leading: Icon(Icons.settings, size: 40, color: Colors.yellow),
    //       leading: Image.network('https://pic2.58cdn.com.cn/p1/big/n_v26d53fadb15e74fbea1f1659c00c3727e.jpg'),
    //       title: Text(
    //         '大众 高尔夫GTI 2016款 2.0TSI GTI',
    //         style: TextStyle(
    //             fontSize: 20
    //         ),
    //       ),
    //       subtitle: Text('2017年 5万公里'),
    //     ),
    //   ],
    // );

    /**
     * TODO: implement build 水平列表
     */
    // return Container(
    //   height: 180,
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: <Widget>[
    //       Container(
    //         width: 100,
    //         color: Colors.orange,
    //       ),
    //       Container(
    //         width: 100,
    //         color: Colors.blue,
    //       ),
    //       Container(
    //         width: 100,
    //         color: Colors.red,
    //       ),
    //       Container(
    //         width: 100,
    //         color: Colors.yellow,
    //       )
    //     ],
    //   ),
    // );

    /**
     * TODO: implement build 动态列表
     */
    // return ListView(
    //   children:this._getData(),
    // );

    /**
     * TODO: implement build 动态列表 ListView.build
     */
    return ListView.builder(
      itemCount: listData.length,
      // itemBuilder: (context, index){
      //   return ListTile(
      //     title: Text(listData[index]["title"]),
      //   );
      // }
      itemBuilder: this._getListData, // 注意 这里是赋予 不是执行
    );
  }

  // 自定义私有方法
  List<Widget> _getData(){

    // List<Widget> list = new List();
    // for(var i = 0; i <20; i++) {
    //   list.add(ListTile(
    //     title: Text('我是$i列表'),
    //   ));
    // }

    var list = listData.map((value) => (
      ListTile(
        leading: Image.network(value["image"]),
        title: Text(value["title"]),
        subtitle: Text(value["subTitle"]),
      )
    ));

    return list.toList();
  }

}