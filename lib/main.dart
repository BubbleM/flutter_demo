import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/child/grid.dart';
import 'package:flutter_app/child/image.dart';
import 'package:flutter_app/child/list.dart';
import 'package:flutter_app/child/stack.dart';

import 'child/text.dart';

void main(){
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      // child: TextChild()
      // child: ImageChild()
      // child: ListChild(),
      // child: GridChild(),
      child: StackChild(),
    );
  }
}