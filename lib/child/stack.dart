import 'package:flutter/material.dart';

class StackChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    /**
     * TODO: implement build 单个组件需要定位
     */
    // return Center(
    //   child: Stack(
    //     // alignment: Alignment.center,
    //     alignment: Alignment(0,1), //自定义方位 0,0居中
    //     children: <Widget>[
    //       Container(
    //         width: 300,
    //         height: 300,
    //         color: Colors.red,
    //       ),
    //       Text('我是文本1'),
    //     ],
    //   ),
    // );

    /**
     * TODO: implement build 多个组件需要定位 结合 Align 使用
     */
    // return Center(
    //   child: Container(
    //     height: 400,
    //     width: 300,
    //     color: Colors.red,
    //     child: Stack(
    //       children: <Widget>[
    //         Align(
    //           alignment: Alignment(1,-0.2),
    //           child: Icon(Icons.home, size: 40, color: Colors.white),
    //         ),
    //         Align(
    //           alignment: Alignment.center,
    //           child: Icon(Icons.search, size: 30, color: Colors.white),
    //         ),
    //         Align(
    //           alignment: Alignment.bottomRight,
    //           child: Icon(Icons.send, size: 60, color: Colors.white),
    //         )
    //       ],
    //     ),
    //   )
    // );

    /**
     * TODO: implement build 多个组件需要定位 结合 Position 使用
     */
    return Center(
        child: Container(
          height: 400,
          width: 300,
          color: Colors.red,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 10,
                child: Icon(Icons.home, size: 40, color: Colors.white),
              ),
              Positioned(
                bottom: 0,
                left: 100,
                child: Icon(Icons.search, size: 30, color: Colors.white),
              ),
              Positioned(
                right: 0,
                child: Icon(Icons.send, size: 60, color: Colors.white),
              )
            ],
          ),
        )
    );
  }
}