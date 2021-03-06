import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/child/aspectRatio.dart';
import 'package:flutter_app/child/card.dart';
import 'package:flutter_app/child/grid.dart';
import 'package:flutter_app/child/image.dart';
import 'package:flutter_app/child/list.dart';
import 'package:flutter_app/child/stack.dart';
import 'package:flutter_app/child/state.dart';
import 'package:flutter_app/child/tab.dart';
import 'package:flutter_app/child/wrap.dart';
import 'package:flutter_app/page/search.dart';

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
      // home: TabChild(),
      routes: {
        '/search1': (context) => SearchPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        // body: HomeContent(),
        body: TabChild(),
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
      // child: StackChild(),
      // child: AspectRatioChild(),
      // child: CardChild(),
      // child: WrapChild(),
      child: StateChild(),
    );
  }
}